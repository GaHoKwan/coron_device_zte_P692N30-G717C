.class public Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;
.super Ljava/lang/Object;
.source "NetworkInfoUrcParser.java"


# static fields
.field private static final ALIGN_MENT_ENABLE:Ljava/lang/Boolean; = null

.field private static final AMR_SUPPORT_ENABLE:Ljava/lang/Boolean; = null

.field private static final DATA_FORMAT:I = 0x10

.field private static final DATA_OFFSET_2:I = 0x2

.field private static final DATA_OFFSET_4:I = 0x4

.field private static final DATA_OFFSET_6:I = 0x6

.field private static final DATA_OFFSET_8:I = 0x8

.field private static final FWPNC_LAI_INFO_ENABLE:Ljava/lang/Boolean; = null

.field private static final GPRS_MODE_ENABLE:Ljava/lang/Boolean; = null

.field private static final MAX_DATA_PER_LINE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NetworkInfo"

.field private static final TYPE_ALIGNMENT:I = 0x8

.field private static final TYPE_FLOAT:I = 0x7

.field private static final TYPE_INT16:I = 0x4

.field private static final TYPE_INT32:I = 0x5

.field private static final TYPE_INT8:I = 0x3

.field private static final TYPE_LONG:I = 0x6

.field private static final TYPE_UINT16:I = 0x1

.field private static final TYPE_UINT32:I = 0x2

.field private static final TYPE_UINT8:I


# instance fields
.field public mOffset:I

.field private mRawString:Ljava/lang/String;

.field private mResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->ALIGN_MENT_ENABLE:Ljava/lang/Boolean;

    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->GPRS_MODE_ENABLE:Ljava/lang/Boolean;

    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->AMR_SUPPORT_ENABLE:Ljava/lang/Boolean;

    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->FWPNC_LAI_INFO_ENABLE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method private getValueFrom2Byte(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 8
    .parameter "data"
    .parameter "start"
    .parameter "signed"

    .prologue
    .line 819
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, p2, 0x4

    if-ge v6, v7, :cond_0

    .line 820
    const-string v6, "0"

    .line 834
    :goto_0
    return-object v6

    .line 823
    :cond_0
    add-int/lit8 v6, p2, 0x2

    :try_start_0
    invoke-virtual {p1, p2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 824
    .local v3, low:Ljava/lang/String;
    add-int/lit8 v6, p2, 0x2

    add-int/lit8 v7, p2, 0x4

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, high:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 826
    .local v4, reverse:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 827
    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 828
    .local v2, i:I
    int-to-short v6, v2

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 829
    .local v5, s:Ljava/lang/Short;
    invoke-virtual {v5}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 831
    .end local v2           #i:I
    .end local v5           #s:Ljava/lang/Short;
    :cond_1
    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 833
    .end local v1           #high:Ljava/lang/String;
    .end local v3           #low:Ljava/lang/String;
    .end local v4           #reverse:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 834
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "Error."

    goto :goto_0
.end method

.method private getValueFrom4Byte(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 11
    .parameter "data"
    .parameter "start"
    .parameter "signed"

    .prologue
    .line 848
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, p2, 0x8

    if-ge v9, v10, :cond_0

    .line 849
    const-string v9, "0"

    .line 865
    :goto_0
    return-object v9

    .line 852
    :cond_0
    add-int/lit8 v9, p2, 0x2

    :try_start_0
    invoke-virtual {p1, p2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, byte1:Ljava/lang/String;
    add-int/lit8 v9, p2, 0x2

    add-int/lit8 v10, p2, 0x4

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 854
    .local v1, byte2:Ljava/lang/String;
    add-int/lit8 v9, p2, 0x4

    add-int/lit8 v10, p2, 0x6

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 855
    .local v2, byte3:Ljava/lang/String;
    add-int/lit8 v9, p2, 0x6

    add-int/lit8 v10, p2, 0x8

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 856
    .local v3, byte4:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 857
    .local v8, reverse:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 858
    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 859
    .local v6, lg:J
    long-to-int v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 860
    .local v5, i:Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 862
    .end local v5           #i:Ljava/lang/Integer;
    .end local v6           #lg:J
    :cond_1
    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 864
    .end local v0           #byte1:Ljava/lang/String;
    .end local v1           #byte2:Ljava/lang/String;
    .end local v2           #byte3:Ljava/lang/String;
    .end local v3           #byte4:Ljava/lang/String;
    .end local v8           #reverse:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 865
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v9, "Error."

    goto :goto_0
.end method

.method private getValueFromByte(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "start"
    .parameter "signed"

    .prologue
    .line 792
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, p2, 0x2

    if-ge v4, v5, :cond_0

    .line 793
    const-string v4, "0"

    .line 805
    :goto_0
    return-object v4

    .line 796
    :cond_0
    add-int/lit8 v4, p2, 0x2

    :try_start_0
    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 797
    .local v3, sub:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 798
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Short;->valueOf(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v2

    .line 799
    .local v2, s:S
    int-to-byte v4, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 800
    .local v0, b:Ljava/lang/Byte;
    invoke-virtual {v0}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 802
    .end local v0           #b:Ljava/lang/Byte;
    .end local v2           #s:S
    :cond_1
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Short;->valueOf(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Short;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 804
    .end local v3           #sub:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 805
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "Error."

    goto :goto_0
.end method

.method private oneBlockFrom2Byte(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;
    .locals 4
    .parameter "label"
    .parameter "data"
    .parameter "start"
    .parameter "signed"
    .parameter "dataLength"

    .prologue
    .line 907
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 908
    .local v0, block:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p5, :cond_2

    .line 909
    const/4 v2, 0x1

    if-le p5, v2, :cond_0

    rem-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_0

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 912
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getValueFrom2Byte(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 913
    add-int/lit8 p3, p3, 0x4

    .line 914
    add-int/lit8 v2, p5, -0x1

    if-eq v1, v2, :cond_1

    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 908
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 918
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private oneBlockFrom4Byte(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;
    .locals 4
    .parameter "label"
    .parameter "data"
    .parameter "start"
    .parameter "signed"
    .parameter "dataLength"

    .prologue
    .line 933
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 934
    .local v0, block:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p5, :cond_2

    .line 935
    const/4 v2, 0x1

    if-le p5, v2, :cond_0

    rem-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_0

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 938
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getValueFrom4Byte(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    add-int/lit8 p3, p3, 0x8

    .line 940
    add-int/lit8 v2, p5, -0x1

    if-eq v1, v2, :cond_1

    .line 941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 934
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 944
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private oneBlockFromByte(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;
    .locals 4
    .parameter "label"
    .parameter "data"
    .parameter "start"
    .parameter "signed"
    .parameter "dataLength"

    .prologue
    .line 881
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 882
    .local v0, block:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p5, :cond_2

    .line 883
    const/4 v2, 0x1

    if-le p5, v2, :cond_0

    rem-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_0

    .line 884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getValueFromByte(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 887
    add-int/lit8 p3, p3, 0x2

    .line 888
    add-int/lit8 v2, p5, -0x1

    if-eq v1, v2, :cond_1

    .line 889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 892
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseElement(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"
    .parameter "label"

    .prologue
    .line 779
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseElement(ILjava/lang/String;I)Ljava/lang/String;
    .locals 13
    .parameter "type"
    .parameter "label"
    .parameter "count"

    .prologue
    .line 703
    const-string v12, ""

    .line 704
    .local v12, value:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 774
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    .line 775
    return-object v12

    .line 706
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mRawString:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->oneBlockFromByte(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v12

    .line 707
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    mul-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    goto :goto_0

    .line 710
    :pswitch_1
    sget-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->ALIGN_MENT_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    .line 713
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mRawString:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->oneBlockFrom2Byte(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v12

    .line 714
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    mul-int/lit8 v1, p3, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    goto :goto_0

    .line 717
    :pswitch_2
    sget-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->ALIGN_MENT_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    .line 720
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mRawString:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->oneBlockFrom4Byte(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v12

    .line 721
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    mul-int/lit8 v1, p3, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    goto :goto_0

    .line 724
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mRawString:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->oneBlockFromByte(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v12

    .line 725
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    mul-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    goto/16 :goto_0

    .line 728
    :pswitch_4
    sget-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->ALIGN_MENT_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 729
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    .line 731
    :cond_3
    iget-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mRawString:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->oneBlockFrom2Byte(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v12

    .line 732
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    mul-int/lit8 v1, p3, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    goto/16 :goto_0

    .line 735
    :pswitch_5
    sget-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->ALIGN_MENT_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 736
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    .line 738
    :cond_4
    iget-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mRawString:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->oneBlockFrom4Byte(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v12

    .line 739
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    mul-int/lit8 v1, p3, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    goto/16 :goto_0

    .line 742
    :pswitch_6
    sget-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->ALIGN_MENT_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 743
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    .line 745
    :cond_5
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mRawString:Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getValueFrom4Byte(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v11

    .line 746
    .local v11, strRscp:Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 748
    .local v8, rscp:J
    :try_start_0
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    div-long v8, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 753
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    goto/16 :goto_0

    .line 749
    :catch_0
    move-exception v6

    .line 750
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v0, "NetworkInfo"

    const-string v1, "rscp = Long.valueOf(strRscp)/4096 exp."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 756
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v8           #rscp:J
    .end local v11           #strRscp:Ljava/lang/String;
    :pswitch_7
    sget-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->ALIGN_MENT_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 757
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    .line 759
    :cond_6
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mRawString:Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getValueFrom4Byte(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    .line 760
    .local v10, strEcno:Ljava/lang/String;
    const/4 v7, 0x0

    .line 762
    .local v7, ecno:F
    :try_start_1
    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    const/high16 v1, 0x4580

    div-float v7, v0, v1

    .line 766
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 767
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    goto/16 :goto_0

    .line 763
    :catch_1
    move-exception v6

    .line 764
    .restart local v6       #e:Ljava/lang/NumberFormatException;
    const-string v0, "NetworkInfo"

    const-string v1, "ecno = Long.valueOf(strEcno)/4096 exp."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 770
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v7           #ecno:F
    .end local v10           #strEcno:Ljava/lang/String;
    :pswitch_8
    sget-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->ALIGN_MENT_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    goto/16 :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public get3GCsceEMServCellSStatusInd(Z)Ljava/lang/String;
    .locals 5
    .parameter "isTdd"

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 459
    const-string v0, "ref_count: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 460
    const-string v0, "msg_len: "

    invoke-direct {p0, v3, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 461
    const-string v0, "cell_idx: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 462
    const-string v0, "uarfacn_DL: "

    invoke-direct {p0, v3, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 463
    const-string v0, "psc: "

    invoke-direct {p0, v3, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 464
    const-string v0, "is_s_criteria_satisfied: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 465
    const-string v0, "qQualmin: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 466
    const-string v0, "qRxlevmin: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 467
    const-string v0, "srxlev: "

    invoke-direct {p0, v4, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 468
    const-string v0, "spual: "

    invoke-direct {p0, v4, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 469
    const/4 v0, 0x6

    const-string v1, "rscp: "

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 470
    if-nez p1, :cond_0

    .line 471
    const/4 v0, 0x7

    const-string v1, "ec_no: "

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 473
    :cond_0
    const-string v0, "cycle_len: "

    invoke-direct {p0, v3, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 474
    if-nez p1, :cond_1

    .line 475
    const-string v0, "quality_measure: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 477
    :cond_1
    const-string v0, "band: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 478
    const-string v0, "rssi: "

    invoke-direct {p0, v4, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 479
    const/4 v0, 0x2

    const-string v1, "cell_identity: "

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 480
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    .line 481
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    .line 482
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public get3GCsceEmInfoMultiPlmn()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 489
    const-string v1, "multi_plmn_count: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 490
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mcc1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mcc2_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mcc3_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnc1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnc2_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnc3_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v1
.end method

.method public get3GHandoverSequenceIndStuct()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 573
    const/4 v0, 0x0

    const-string v1, "service_status: "

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 574
    const/16 v0, 0x8

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 575
    const-string v0, "[old_cell_info:-----]\nprimary_uarfcn_DL: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 576
    const-string v0, "working_uarfcn: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 577
    const-string v0, "physicalCellId: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 578
    const-string v0, "[target_cell_info:-----]\nprimary_uarfcn_DL: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 579
    const-string v0, "working_uarfcn: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 580
    const-string v0, "physicalCellId: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public get3GMemeEmInfoHServCellInd()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 562
    const-string v0, "HSDSCH_Serving_UARFCN: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 563
    const-string v0, "HSDSCH_Serving_PSC: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 564
    const-string v0, "EDCH_Serving_UARFCN: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 565
    const-string v0, "EDCH_Serving_PSC: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 566
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public get3GMemeEmInfoUmtsCellStatus()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 505
    const/4 v1, 0x3

    const-string v2, "tx_power: "

    invoke-direct {p0, v1, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 506
    const-string v1, "num_cells: "

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 507
    const/16 v1, 0x8

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 508
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UARFCN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSCP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECNO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cell_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Band"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSSI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 516
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cell_identity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v1
.end method

.method public get3GMemeEmPeriodicBlerReportInd()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 525
    const-string v1, "num_trch: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 526
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 527
    const-string v1, ""

    invoke-direct {p0, v5, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrCHId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TotalCRC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BadCRC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v1
.end method

.method public get3GMmEmInfo()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 424
    const-string v0, "t3212: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 425
    const-string v0, "ATT_flag: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 426
    const-string v0, "MM_reject_cause: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 427
    const-string v0, "MM_state: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 428
    const-string v0, "MCC:"

    invoke-direct {p0, v2, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 429
    const-string v0, "MNC:"

    invoke-direct {p0, v2, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 430
    const-string v0, "LOC:"

    const/4 v1, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 431
    const-string v0, "rac: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 432
    const-string v0, "TMSI:"

    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 433
    const-string v0, "is_t3212_running:"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 434
    const-string v0, "t3212_timer_value:"

    invoke-direct {p0, v3, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 435
    const-string v0, "t3212_passed_time:"

    invoke-direct {p0, v3, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 436
    const-string v0, "common_access_class: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 437
    const-string v0, "cs_access_class: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 438
    const-string v0, "ps_access_class: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 439
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    .line 440
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public get3GSlceEmPsDataRateStatusInd()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 547
    const-string v1, "ps_number: "

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 548
    const-string v1, ""

    invoke-direct {p0, v6, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 549
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RAB_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 551
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RB_UD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DL_rate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UL_rate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v1
.end method

.method public get3GTcmMmiEmInfo()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 447
    const-string v1, "num_of_valid_entries: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 448
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nsapi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data_speed_value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v1
.end method

.method public get3GUl2EmAdmPoolStatusIndStruct()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[dl_adm_poll_info:-----]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    .line 589
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max_usage_kbytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avg_usage_kbytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[ul_adm_poll_info:-----]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    .line 594
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max_usage_kbytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avg_usage_kbytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 598
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v1
.end method

.method public get3GUl2EmPeriodicBlerReportInd()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 646
    const-string v1, "num_trch:"

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 647
    const-string v1, ""

    invoke-direct {p0, v5, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TrCHBler:--------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    .line 649
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrCHId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TotalCRC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BadCRC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v1
.end method

.method public get3GUl2EmPsDataRateStatusIndStruct()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 605
    const-string v0, "rx_mac_data_rate:"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 606
    const-string v0, "rx_pdcp_data_rate:"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 607
    const-string v0, "tx_mac_data_rate:"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 608
    const-string v0, "tx_pdcp_data_rate:"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 609
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public get3GUl2EmUrlcEventStatusIndStruct()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 626
    const/4 v0, 0x3

    const-string v1, "rb_id:"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 627
    const-string v0, "rlc_action:"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 628
    const-string v0, "rb_info:--- \nis_srb:"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 629
    const-string v0, "cn_domain:"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 630
    const-string v0, "rlc_info:--- \nrlc_mode:"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 631
    const-string v0, "direction:"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 632
    const-string v0, "rlc_parameter:--- \npdu_Size:"

    invoke-direct {p0, v3, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 633
    const-string v0, "tx_window_size:"

    invoke-direct {p0, v3, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 634
    const-string v0, "rx_window_size:"

    invoke-direct {p0, v3, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 635
    const-string v0, "discard_mode:"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 636
    const-string v0, "discard_value:"

    invoke-direct {p0, v3, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 637
    const-string v0, "flush_data_indicator:"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 638
    const-string v0, "reset_cause:"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 639
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public get3GUrrUmtsSrncId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 539
    const/4 v0, 0x1

    const-string v1, "srnc: "

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 540
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public get3Gul2EmHsdschReconfigStatusIndStruct()Ljava/lang/String;
    .locals 4

    .prologue
    .line 616
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 617
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reconfig_info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v1
.end method

.method public getBLKInfo()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 346
    const-string v0, "ul_coding_scheme: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 347
    const-string v0, "ul_cv: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 348
    const-string v0, "ul_tlli: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 349
    const-string v0, "ul_bsn1: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 350
    sget-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->GPRS_MODE_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "ul_bsn2: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 352
    const-string v0, "ul_cps: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 353
    const-string v0, "ul_rsb: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 354
    const-string v0, "ul_spb: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 356
    :cond_0
    const-string v0, "dl_c_value_in_rx_level: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 357
    const-string v0, "dl_rxqual: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 358
    const-string v0, "dl_sign_var: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 359
    const-string v0, "dl_coding_scheme: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 360
    const-string v0, "dl_fbi: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 361
    const-string v0, "dl_bsn1: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 362
    sget-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->GPRS_MODE_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    const-string v0, "dl_bsn2: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 364
    const-string v0, "dl_cps: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 365
    const-string v0, "dl_gmsk_mean_bep_lev: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 366
    const-string v0, "dl_8psk_mean_bep_lev: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 367
    const-string v0, "dl_tn_mean_bep_lev:"

    invoke-direct {p0, v1, v0, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 369
    :cond_1
    const-string v0, "dl_tn_interference_lev:"

    invoke-direct {p0, v1, v0, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getCaListInfo()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 304
    const-string v0, "valid: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 305
    const-string v0, "number_of_channels: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 306
    const/4 v0, 0x1

    const-string v1, "arfcn_list:"

    const/16 v2, 0x40

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getCellSelInfo()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    const-string v0, "crh: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 156
    const-string v0, "ms_txpwr: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 157
    const-string v0, "rxlev_access_min: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getChDscrInfo()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 165
    const-string v0, "channel_type: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 166
    const-string v0, "tn: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 167
    const-string v0, "tsc: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 168
    const-string v0, "hopping_flag: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 169
    const-string v0, "maio: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 170
    const-string v0, "hsn: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 171
    const-string v0, "num_of_carriers: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 172
    const-string v0, "arfcn:"

    const/16 v1, 0x40

    invoke-direct {p0, v4, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 173
    const-string v0, "is_BCCH_arfcn_valid: "

    invoke-direct {p0, v3, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 174
    const-string v0, "BCCH_arfcn: "

    invoke-direct {p0, v4, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 175
    const-string v0, "cipher_algo: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 176
    const-string v0, "imeisv_digit: "

    const/16 v1, 0x10

    invoke-direct {p0, v2, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 177
    const-string v0, "channel_mode: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 178
    sget-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->AMR_SUPPORT_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "amr_valid: "

    invoke-direct {p0, v3, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 180
    const-string v0, "mr_ver: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 181
    const-string v0, "nscb: "

    invoke-direct {p0, v3, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 182
    const-string v0, "icmi: "

    invoke-direct {p0, v3, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 183
    const-string v0, "start_codec_mode: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 184
    const-string v0, "acs: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 185
    const-string v0, "threshold:"

    invoke-direct {p0, v2, v0, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 186
    const-string v0, "hysteresis:"

    invoke-direct {p0, v2, v0, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getControlMsgInfo()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    const-string v0, "msg_type: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 315
    const-string v0, "rr_cause: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getCtrlchanInfo()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    const-string v0, "mscr: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 196
    const-string v0, "att: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 197
    const-string v0, "bs_ag_blks_res: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 198
    const-string v0, "ccch_conf: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 199
    const-string v0, "cbq2: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 200
    const-string v0, "bs_pa_mfrms: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 201
    const-string v0, "t3212: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getGPRSGenInfo()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 408
    const-string v0, "t3192: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 409
    const-string v0, "t3168: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 410
    const-string v0, "rp: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 411
    const-string v0, "gprs_support: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 412
    const-string v0, "egprs_support: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 413
    const-string v0, "sgsn_r: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 414
    const-string v0, "pfc_support: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 415
    const-string v0, "epcr_support: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 416
    const-string v0, "bep_period: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getLAIInfo()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 222
    const-string v0, "mcc:"

    invoke-direct {p0, v2, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 223
    const-string v0, "mnc:"

    invoke-direct {p0, v2, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 224
    const-string v0, "lac:"

    const/4 v1, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 225
    const/4 v0, 0x1

    const-string v1, "cell_id: "

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 226
    const-string v0, "nc_info_index: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 227
    const-string v0, "nmo: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 228
    const-string v0, "supported_Band: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getMIInfo()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 335
    const-string v0, "present: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 336
    const/4 v0, 0x0

    const-string v1, "no_of_instance: "

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 337
    const-string v0, "emr_report: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 338
    const-string v0, "umts_parameter_exist: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasRepInfo()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    const/16 v5, 0x20

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 248
    const-string v1, "rr_state: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 249
    const-string v1, "serving_arfcn: "

    invoke-direct {p0, v7, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 250
    const-string v1, "serving_bsic: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 251
    const-string v1, "serving_current_band: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 252
    const-string v1, "serv_gprs_supported: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 253
    const-string v1, "serv_rla_in_quarter_dbm: "

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 254
    const-string v1, "is_serv_BCCH_rla_valid: "

    invoke-direct {p0, v6, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 255
    const-string v1, "serv_BCCH_rla_in_dedi_state: "

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 256
    const-string v1, "quality: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 257
    const-string v1, "gprs_pbcch_present: "

    invoke-direct {p0, v6, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 258
    const-string v1, "gprs_c31_c32_enable: "

    invoke-direct {p0, v6, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 259
    const-string v1, "c31:"

    invoke-direct {p0, v4, v1, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 260
    const-string v1, "c1_serv_cell: "

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 261
    const-string v1, "c2_serv_cell: "

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 262
    const-string v1, "c31_serv_cell: "

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 263
    const-string v1, "num_of_carriers: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 264
    const-string v1, "nc_arfcn:"

    invoke-direct {p0, v7, v1, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 265
    const-string v1, "rla_in_quarter_dbm:"

    invoke-direct {p0, v4, v1, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 266
    const-string v1, "nc_info_status:"

    invoke-direct {p0, v3, v1, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 267
    const-string v1, "nc_bsic:"

    invoke-direct {p0, v3, v1, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 268
    const/4 v1, 0x5

    const-string v2, "frame_offset:"

    invoke-direct {p0, v1, v2, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 269
    const/4 v1, 0x5

    const-string v2, "ebit_offset:"

    invoke-direct {p0, v1, v2, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 270
    const-string v1, "c1:"

    invoke-direct {p0, v4, v1, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 271
    const-string v1, "c2:"

    invoke-direct {p0, v4, v1, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 272
    const-string v1, "multiband_report: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 273
    const-string v1, "timing_advance: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 274
    const-string v1, "tx_power_level: "

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 275
    const-string v1, "serv_rla_full_value_in_quater_dbm: "

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 276
    const-string v1, "nco: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 277
    const-string v1, "rxqual_sub: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 278
    const-string v1, "rxqual_full: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 279
    const-string v1, "using_tx_power_in_dbm: "

    invoke-direct {p0, v4, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 280
    const-string v1, "amr_info_valid: "

    invoke-direct {p0, v6, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 281
    const-string v1, "cmr_cmc_cmiu_cmid: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 282
    const-string v1, "c_i: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 283
    const-string v1, "icm: "

    invoke-direct {p0, v7, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 284
    const-string v1, "acs: "

    invoke-direct {p0, v7, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 285
    const-string v1, "dl_dtx_used: "

    invoke-direct {p0, v6, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 286
    sget-object v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->FWPNC_LAI_INFO_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const-string v1, "num_of_nc_lai: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nc_lai:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nc_lai["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mcc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1, v6}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 291
    const-string v1, "mnc:"

    invoke-direct {p0, v3, v1, v6}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 292
    const-string v1, "lac:"

    const/4 v2, 0x2

    invoke-direct {p0, v3, v1, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 293
    const-string v1, "cell_id: "

    invoke-direct {p0, v7, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 294
    const-string v1, "nc_info_index: "

    invoke-direct {p0, v3, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v1
.end method

.method public getRACHCtrlInfo()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    const-string v0, "max_retrans: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 210
    const-string v0, "tx_integer: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 211
    const-string v0, "cba: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 212
    const-string v0, "re: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 213
    const-string v0, "acc_class:"

    const/4 v1, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;I)Ljava/lang/String;

    .line 214
    const/4 v0, 0x3

    const-string v1, "CB_supported: "

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioLinkInfo()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    const/4 v0, 0x1

    const-string v1, "max_value: "

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 237
    const/4 v0, 0x4

    const-string v1, "current_value: "

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 238
    const-string v0, "dtx_ind: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 239
    const-string v0, "dtx_used: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 240
    const/4 v0, 0x3

    const-string v1, "is_dsf: "

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getSI2QInfo()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 323
    const-string v0, "present: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 324
    const/4 v0, 0x0

    const-string v1, "no_of_instance: "

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 325
    const-string v0, "emr_report: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 326
    const-string v0, "pemr_report: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 327
    const-string v0, "umts_parameter_exist: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getTBFInfo()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 377
    const-string v0, "tbf_mode: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 378
    const-string v0, "ul_tbf_status: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 379
    const-string v0, "ul_rel_cause: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 380
    const-string v0, "ul_ts_allocation: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 381
    const-string v0, "ul_rlc_mode: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 382
    const-string v0, "ul_mac_mode: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 383
    const-string v0, "number_rlc_octect: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 384
    const-string v0, "ul_tfi: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 385
    const-string v0, "ul_granularity: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 386
    const-string v0, "ul_usf: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 387
    const-string v0, "ul_tai: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 388
    const-string v0, "ul_tqi: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 389
    const-string v0, "ul_window_size: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 390
    const-string v0, "dl_tbf_status: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 391
    const-string v0, "dl_rel_cause: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 392
    const-string v0, "dl_ts_allocation: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 393
    const-string v0, "dl_rlc_mode: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 394
    const-string v0, "dl_mac_mode: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 395
    const-string v0, "dl_tfi: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 396
    const-string v0, "dl_tai: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 397
    const-string v0, "dl_window_size: "

    invoke-direct {p0, v2, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 398
    sget-object v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->GPRS_MODE_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "dl_out_of_memory: "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getxGCsceEMNeighCellSStatusIndStructSize()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 661
    const-string v2, "ref_count:"

    invoke-direct {p0, v4, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 662
    const-string v2, "msg_len"

    invoke-direct {p0, v6, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 663
    const-string v2, "neigh_cell_count:"

    invoke-direct {p0, v4, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 664
    const-string v2, "operation:"

    invoke-direct {p0, v4, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 665
    iget-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mRawString:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    invoke-direct {p0, v2, v3, v4}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getValueFromByte(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, xgType:Ljava/lang/String;
    const-string v2, "RAT_type:"

    invoke-direct {p0, v4, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 667
    const/16 v2, 0x8

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 669
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "----GSM_neigh_cells----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    .line 671
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cellidx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 673
    const-string v2, "arfcn"

    invoke-direct {p0, v6, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bsic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is_bsic_verified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is_s_criteria_saticified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freq_band"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qRxlevmin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srxlev"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rssi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 681
    iget v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 684
    .end local v0           #i:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "----3G_neigh_cells----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    .line 685
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v8, :cond_1

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cellidx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 687
    const-string v2, "arfcn_DL"

    invoke-direct {p0, v6, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 688
    const-string v2, "psc"

    invoke-direct {p0, v6, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is_s_criteria_saticified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qQualmin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qRxlevmin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srxlev"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "squal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 694
    const/4 v2, 0x6

    const-string v3, "rscp: "

    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ec_no"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseElement(ILjava/lang/String;)Ljava/lang/String;

    .line 696
    iget v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 699
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    return-object v2
.end method

.method public parseInfo(ILjava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "type"
    .parameter "info"
    .parameter "simType"

    .prologue
    const/4 v0, 0x0

    .line 77
    const-string v1, "NetworkInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkInfo ------ Type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v1, "NetworkInfo"

    const-string v2, "NetworkInfo ------ Data is:\n"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "NetworkInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v1, "NetworkInfo"

    const-string v2, "NetworkInfo ---------------------------"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object p2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mRawString:Ljava/lang/String;

    .line 82
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mResult:Ljava/lang/String;

    .line 83
    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->mOffset:I

    .line 85
    sparse-switch p1, :sswitch_data_0

    .line 147
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 87
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getCellSelInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :sswitch_1
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getChDscrInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :sswitch_2
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getCtrlchanInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :sswitch_3
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getRACHCtrlInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :sswitch_4
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getLAIInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :sswitch_5
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getRadioLinkInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :sswitch_6
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getMeasRepInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :sswitch_7
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getCaListInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :sswitch_8
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getControlMsgInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :sswitch_9
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getSI2QInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :sswitch_a
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getMIInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :sswitch_b
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getBLKInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :sswitch_c
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getTBFInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :sswitch_d
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getGPRSGenInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :sswitch_e
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3GMmEmInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :sswitch_f
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3GTcmMmiEmInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :sswitch_10
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3GCsceEmInfoMultiPlmn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :sswitch_11
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3GMemeEmPeriodicBlerReportInd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :sswitch_12
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3GUrrUmtsSrncId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :sswitch_13
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3GMemeEmInfoHServCellInd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :sswitch_14
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->getxGCsceEMNeighCellSStatusIndStructSize()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :sswitch_15
    invoke-static {p3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->getModemType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3GCsceEMServCellSStatusInd(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :sswitch_16
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3GMemeEmInfoUmtsCellStatus()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :sswitch_17
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3GSlceEmPsDataRateStatusInd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :sswitch_18
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3GHandoverSequenceIndStuct()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 137
    :sswitch_19
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3GUl2EmAdmPoolStatusIndStruct()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 139
    :sswitch_1a
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3GUl2EmPsDataRateStatusIndStruct()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 141
    :sswitch_1b
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3Gul2EmHsdschReconfigStatusIndStruct()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 143
    :sswitch_1c
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3GUl2EmUrlcEventStatusIndStruct()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 145
    :sswitch_1d
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->get3GUl2EmPeriodicBlerReportInd()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x35 -> :sswitch_e
        0x3b -> :sswitch_f
        0x4b -> :sswitch_15
        0x4c -> :sswitch_14
        0x51 -> :sswitch_10
        0x5a -> :sswitch_16
        0x63 -> :sswitch_11
        0x6f -> :sswitch_12
        0x82 -> :sswitch_18
        0x8c -> :sswitch_17
        0x9b -> :sswitch_13
        0xb9 -> :sswitch_19
        0xba -> :sswitch_1a
        0xbb -> :sswitch_1b
        0xbc -> :sswitch_1c
        0xbd -> :sswitch_1d
    .end sparse-switch
.end method

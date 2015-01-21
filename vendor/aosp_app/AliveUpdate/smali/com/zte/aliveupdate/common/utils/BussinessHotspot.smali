.class public Lcom/zte/aliveupdate/common/utils/BussinessHotspot;
.super Ljava/lang/Object;
.source "BussinessHotspot.java"


# static fields
.field private static final BussinessHotspotList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/aliveupdate/common/utils/BussinessHotspot;->BussinessHotspotList:Ljava/util/List;

    .line 26
    invoke-static {}, Lcom/zte/aliveupdate/common/utils/BussinessHotspot;->initBussinessHotspotList()V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initBussinessHotspotList()V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/zte/aliveupdate/common/utils/BussinessHotspot;->BussinessHotspotList:Ljava/util/List;

    const-string v1, "CMCC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/zte/aliveupdate/common/utils/BussinessHotspot;->BussinessHotspotList:Ljava/util/List;

    const-string v1, "CMCC-EDU"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/zte/aliveupdate/common/utils/BussinessHotspot;->BussinessHotspotList:Ljava/util/List;

    const-string v1, "CMCC-AUTO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public static isBussinessHotspot(Ljava/lang/String;)Z
    .locals 4
    .parameter "ssid"

    .prologue
    const/4 v2, 0x0

    .line 37
    if-nez p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v2

    .line 41
    :cond_1
    invoke-static {p0}, Lcom/zte/aliveupdate/common/utils/BussinessHotspot;->removeQutotation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 43
    sget-object v3, Lcom/zte/aliveupdate/common/utils/BussinessHotspot;->BussinessHotspotList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    .local v0, bussinesshotpot:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static removeQutotation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, start:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 54
    .local v0, end:I
    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 57
    :cond_0
    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    add-int/lit8 v0, v0, -0x1

    .line 60
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

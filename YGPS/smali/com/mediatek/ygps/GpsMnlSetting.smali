.class public Lcom/mediatek/ygps/GpsMnlSetting;
.super Ljava/lang/Object;
.source "GpsMnlSetting.java"


# static fields
.field private static final DEFAULT_MNL_PROP:Ljava/lang/String; = "0001100"

.field private static final GPS_CHIP_PROP:Ljava/lang/String; = "gps.gps.version"

.field private static final GPS_CLOCK_PROP:Ljava/lang/String; = "gps.clock.type"

.field public static final KEY_BEE_ENABLED:Ljava/lang/String; = "BEE_enabled"

.field public static final KEY_DEBUG_DBG2FILE:Ljava/lang/String; = "debug.dbg2file"

.field public static final KEY_DEBUG_DBG2SOCKET:Ljava/lang/String; = "debug.dbg2socket"

.field public static final KEY_DEBUG_DEBUG_NMEA:Ljava/lang/String; = "debug.debug_nmea"

.field public static final KEY_DEBUG_NMEA2SOCKET:Ljava/lang/String; = "debug.nmea2socket"

.field public static final KEY_SUPLLOG_ENABLED:Ljava/lang/String; = "SUPPLOG_enabled"

.field public static final KEY_TEST_MODE:Ljava/lang/String; = "test.mode"

.field private static final MNL_PROP_NAME:Ljava/lang/String; = "persist.radio.mnl.prop"

.field public static final PROP_VALUE_0:Ljava/lang/String; = "0"

.field public static final PROP_VALUE_1:Ljava/lang/String; = "1"

.field public static final PROP_VALUE_2:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String; = "YGPS/Mnl_Setting"

.field private static sKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ygps/GpsMnlSetting;->sKeyList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChipVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 81
    const-string v1, "gps.gps.version"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, chipVersion:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    move-object v0, p0

    .line 85
    :cond_1
    return-object v0
.end method

.method public static getClockProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 146
    const-string v1, "gps.clock.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, clockType:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    move-object v0, p0

    .line 150
    :cond_1
    return-object v0
.end method

.method public static getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 98
    move-object v3, p1

    .line 99
    .local v3, result:Ljava/lang/String;
    const-string v4, "persist.radio.mnl.prop"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, prop:Ljava/lang/String;
    sget-object v4, Lcom/mediatek/ygps/GpsMnlSetting;->sKeyList:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 101
    invoke-static {}, Lcom/mediatek/ygps/GpsMnlSetting;->initList()V

    .line 103
    :cond_0
    sget-object v4, Lcom/mediatek/ygps/GpsMnlSetting;->sKeyList:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 104
    .local v1, index:I
    const-string v4, "YGPS/Mnl_Setting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMnlProp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, -0x1

    if-eq v4, v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 107
    :cond_1
    move-object v3, p1

    .line 112
    :goto_0
    const-string v4, "YGPS/Mnl_Setting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMnlProp result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v3

    .line 109
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 110
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static initList()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/ygps/GpsMnlSetting;->sKeyList:Ljava/util/ArrayList;

    .line 155
    sget-object v0, Lcom/mediatek/ygps/GpsMnlSetting;->sKeyList:Ljava/util/ArrayList;

    const-string v1, "debug.dbg2socket"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/mediatek/ygps/GpsMnlSetting;->sKeyList:Ljava/util/ArrayList;

    const-string v1, "debug.nmea2socket"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/mediatek/ygps/GpsMnlSetting;->sKeyList:Ljava/util/ArrayList;

    const-string v1, "debug.dbg2file"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/mediatek/ygps/GpsMnlSetting;->sKeyList:Ljava/util/ArrayList;

    const-string v1, "debug.debug_nmea"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/mediatek/ygps/GpsMnlSetting;->sKeyList:Ljava/util/ArrayList;

    const-string v1, "BEE_enabled"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/mediatek/ygps/GpsMnlSetting;->sKeyList:Ljava/util/ArrayList;

    const-string v1, "test.mode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/mediatek/ygps/GpsMnlSetting;->sKeyList:Ljava/util/ArrayList;

    const-string v1, "SUPPLOG_enabled"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public static setMnlProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .parameter "value"

    .prologue
    .line 125
    const-string v4, "YGPS/Mnl_Setting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMnlProp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v4, "persist.radio.mnl.prop"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, prop:Ljava/lang/String;
    sget-object v4, Lcom/mediatek/ygps/GpsMnlSetting;->sKeyList:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 128
    invoke-static {}, Lcom/mediatek/ygps/GpsMnlSetting;->initList()V

    .line 130
    :cond_0
    sget-object v4, Lcom/mediatek/ygps/GpsMnlSetting;->sKeyList:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 131
    .local v1, index:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 132
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    :cond_1
    const-string v3, "0001100"

    .line 135
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_3

    .line 136
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 137
    .local v0, charArray:[C
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v1

    .line 138
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, newProp:Ljava/lang/String;
    const-string v4, "persist.radio.mnl.prop"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v4, "YGPS/Mnl_Setting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMnlProp newProp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0           #charArray:[C
    .end local v2           #newProp:Ljava/lang/String;
    :cond_3
    return-void
.end method

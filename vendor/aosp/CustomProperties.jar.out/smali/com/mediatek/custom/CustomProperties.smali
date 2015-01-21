.class public Lcom/mediatek/custom/CustomProperties;
.super Ljava/lang/Object;
.source "CustomProperties.java"


# static fields
.field public static final HOST_NAME:Ljava/lang/String; = "HostName"

.field public static final MANUFACTURER:Ljava/lang/String; = "Manufacturer"

.field public static final MODEL:Ljava/lang/String; = "Model"

.field public static final MODULE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final MODULE_BROWSER:Ljava/lang/String; = "browser"

.field public static final MODULE_CMMB:Ljava/lang/String; = "cmmb"

.field public static final MODULE_DM:Ljava/lang/String; = "dm"

.field public static final MODULE_FMTRANSMITTER:Ljava/lang/String; = "fmtransmitter"

.field public static final MODULE_HTTP_STREAMING:Ljava/lang/String; = "http_streaming"

.field public static final MODULE_MMS:Ljava/lang/String; = "mms"

.field public static final MODULE_RTSP_STREAMING:Ljava/lang/String; = "rtsp_streaming"

.field public static final MODULE_SYSTEM:Ljava/lang/String; = "system"

.field public static final MODULE_WLAN:Ljava/lang/String; = "wlan"

.field public static final PROP_MODULE_MAX:I = 0x20

.field public static final PROP_NAME_MAX:I = 0x40

.field public static final RDS_VALUE:Ljava/lang/String; = "RDSValue"

.field public static final SSID:Ljava/lang/String; = "SSID"

.field public static final UAPROF_URL:Ljava/lang/String; = "UAProfileURL"

.field public static final USER_AGENT:Ljava/lang/String; = "UserAgent"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "custom_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-static {v0, p0, v0}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "module"
    .parameter "name"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "module"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "module.length >32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_2

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name.length > 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/mediatek/custom/CustomProperties;->native_get_string(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native native_get_string(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

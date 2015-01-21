.class public final Lcom/mediatek/filemanager/utils/OptionsUtils;
.super Ljava/lang/Object;
.source "OptionsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OptionsManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMtkBeamSurpported()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public static isMtkDrmApp()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public static isMtkSDSwapSurpported()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public static isMtkThemeSupported()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public static isOP01Surported()Z
    .locals 2

    .prologue
    .line 75
    const-string v0, "OP01"

    const-string v1, "ro.operator.optr"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

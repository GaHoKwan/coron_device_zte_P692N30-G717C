.class public Ltmsdk/common/utils/SimUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MCCMNCTYPE_CHINA_MOBILE:I = 0x0

.field public static final MCCMNCTYPE_CHINA_TELECOM:I = 0x2

.field public static final MCCMNCTYPE_CHINA_UNICOM:I = 0x1

.field public static final MCCMNCTYPE_OTHERS:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMccMncType(Ljava/lang/String;)I
    .locals 2
    .parameter "imsi"

    .prologue
    const/4 v0, -0x1

    .line 19
    if-nez p0, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v0

    .line 23
    :cond_1
    const-string v1, "46000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 28
    :cond_3
    const-string v1, "46001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 30
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :cond_4
    const-string v1, "46003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getMccMncTypeByOper(Ljava/lang/String;)I
    .locals 2
    .parameter "imsiOperator"

    .prologue
    const/4 v0, -0x1

    .line 45
    if-nez p0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    const-string v1, "46000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :cond_3
    const-string v1, "46001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :cond_4
    const-string v1, "46003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const/4 v0, 0x2

    goto :goto_0
.end method

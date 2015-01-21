.class public final Ltmsdk/common/utils/SDKUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OS_1_5:I = 0x3

.field public static final OS_1_6:I = 0x4

.field public static final OS_2_0:I = 0x5

.field public static final OS_2_0_1:I = 0x6

.field public static final OS_2_1:I = 0x7

.field public static final OS_2_2:I = 0x8

.field public static final OS_2_3:I = 0x9

.field public static final OS_2_3_3:I = 0xa

.field public static final OS_3_0:I = 0xb

.field public static final OS_3_1:I = 0xc

.field public static final OS_3_2:I = 0xd

.field public static final OS_4_0:I = 0xe

.field public static final OS_4_0_3:I = 0xf

.field public static final OS_4_1_0:I = 0x10

.field public static final OS_4_2_0:I = 0x11

.field public static final OS_4_3_0:I = 0x12

.field public static final RELEASE_ANDROID:I = 0x2

.field public static final RELEASE_LEPHONE:I = 0x3

.field public static final RELEASE_MEIZU_M9:I = 0x4

.field public static final RELEASE_OMS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidReleaseName()I
    .locals 2

    .prologue
    .line 129
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 130
    .local v0, product:Ljava/lang/String;
    const-string v1, "OMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SnapperTD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    const/4 v1, 0x1

    .line 137
    :goto_0
    return v1

    .line 132
    :cond_1
    const-string v1, "qsd8250_surf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3GW100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 134
    :cond_3
    const-string v1, "meizu_m9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    const/4 v1, 0x4

    goto :goto_0

    .line 137
    :cond_4
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getSDKName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public static getSDKVersion()I
    .locals 1

    .prologue
    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

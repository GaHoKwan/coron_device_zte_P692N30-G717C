.class public Lcom/nuance/dragon/toolkit/util/internal/NativeUtils;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/dragon/toolkit/util/internal/NativeUtils;->a:Z

    :try_start_0
    const-string v0, "dmt_native_utils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/nuance/dragon/toolkit/util/internal/NativeUtils;

    const-string v2, "Failed to load native library."

    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/dragon/toolkit/util/internal/NativeUtils;->a:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native isArmV7()Z
.end method

.method public static native isNeonSupported()Z
.end method

.method public static native isX86()Z
.end method

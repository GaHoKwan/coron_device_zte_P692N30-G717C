.class public Lcom/zte/statistics/sdk/util/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBootloaderVersion()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 27
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v3, "BOOTLOADER"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 28
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    move-object v1, v2

    .line 29
    goto :goto_0
.end method

.method public static getRadioVersion()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 50
    :try_start_0
    const-class v2, Landroid/os/Build;

    const-string v4, "getRadioVersion"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 55
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 51
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 53
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_1
    const-class v2, Landroid/os/Build;

    const-string v4, "RADIO"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 54
    :catch_1
    move-exception v1

    .local v1, f:Ljava/lang/Exception;
    move-object v2, v3

    .line 55
    goto :goto_0
.end method

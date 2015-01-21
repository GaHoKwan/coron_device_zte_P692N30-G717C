.class public Lcom/djc/testreflect/EnvironmentFromReflect;
.super Lcom/djc/testreflect/ObjectFromReflect;
.source "EnvironmentFromReflect.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.os.Environment"


# direct methods
.method private constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/djc/testreflect/ObjectFromReflect;-><init>()V

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/djc/testreflect/EnvironmentFromReflect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    new-instance v0, Lcom/djc/testreflect/EnvironmentFromReflect;

    invoke-direct {v0}, Lcom/djc/testreflect/EnvironmentFromReflect;-><init>()V

    return-object v0
.end method

.method public static getSDCardStorageState()Ljava/lang/String;
    .locals 6

    .prologue
    .line 19
    const-string v3, ""

    .line 21
    .local v3, sdCardState:Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.Environment"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    .local v0, cl:Ljava/lang/Class;
    const-string v4, "getSDCardStorageState"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 23
    .local v2, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sdCardState:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .restart local v3       #sdCardState:Ljava/lang/String;
    return-object v3

    .line 25
    .end local v0           #cl:Ljava/lang/Class;
    .end local v2           #m:Ljava/lang/reflect/Method;
    .end local v3           #sdCardState:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 26
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

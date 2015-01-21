.class public Lcom/djc/testreflect/SystemProperties;
.super Lcom/djc/testreflect/ObjectFromReflect;
.source "SystemProperties.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.os.SystemProperties"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/djc/testreflect/ObjectFromReflect;-><init>()V

    .line 10
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "key"

    .prologue
    .line 36
    const-string v4, ""

    .line 38
    .local v4, value:Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    .local v1, cl:Ljava/lang/Class;
    const-string v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 41
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Object;

    .line 43
    .local v0, args:[Ljava/lang/Object;
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v0, v5

    .line 44
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/String;

    const-string v7, "no value!"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v0, v5

    .line 45
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #value:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .restart local v4       #value:Ljava/lang/String;
    return-object v4

    .line 47
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #cl:Ljava/lang/Class;
    .end local v3           #m:Ljava/lang/reflect/Method;
    .end local v4           #value:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 48
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static getInstance()Lcom/djc/testreflect/SystemProperties;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/djc/testreflect/SystemProperties;

    invoke-direct {v0}, Lcom/djc/testreflect/SystemProperties;-><init>()V

    return-object v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 9
    .parameter "key"
    .parameter "def"

    .prologue
    .line 56
    const/4 v4, -0x1

    .line 58
    .local v4, value:I
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 60
    .local v1, cl:Ljava/lang/Class;
    const-string v5, "getInt"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 61
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v0, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 62
    .local v0, args:[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 69
    return v4

    .line 64
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #cl:Ljava/lang/Class;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 65
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "key"
    .parameter "val"

    .prologue
    .line 18
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 19
    .local v1, cl:Ljava/lang/Class;
    const-string v4, "set"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 21
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    .line 23
    .local v0, args:[Ljava/lang/Object;
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v0, v4

    .line 24
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v0, v4

    .line 26
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-void

    .line 28
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #cl:Ljava/lang/Class;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 29
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

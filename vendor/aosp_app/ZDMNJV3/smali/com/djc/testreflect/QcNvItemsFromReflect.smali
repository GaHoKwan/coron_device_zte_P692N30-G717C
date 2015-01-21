.class public Lcom/djc/testreflect/QcNvItemsFromReflect;
.super Lcom/djc/testreflect/ObjectFromReflect;
.source "QcNvItemsFromReflect.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.android.qualcomm.qcnvitems.QcNvItems"


# instance fields
.field private obj:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/djc/testreflect/ObjectFromReflect;-><init>()V

    .line 14
    const-string v0, "com.android.qualcomm.qcnvitems.QcNvItems"

    invoke-virtual {p0, v0}, Lcom/djc/testreflect/QcNvItemsFromReflect;->initClass(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->internalClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->obj:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/djc/testreflect/QcNvItemsFromReflect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    new-instance v0, Lcom/djc/testreflect/QcNvItemsFromReflect;

    invoke-direct {v0}, Lcom/djc/testreflect/QcNvItemsFromReflect;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDirectoryNumber()Ljava/lang/String;
    .locals 6

    .prologue
    .line 75
    const-string v0, ""

    .line 77
    .local v0, directoryNumber:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->internalClass:Ljava/lang/Class;

    const-string v4, "getDirectoryNumber"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 78
    .local v2, m:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->obj:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    return-object v0

    .line 80
    .end local v2           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getEsn()Ljava/lang/String;
    .locals 6

    .prologue
    .line 89
    const-string v1, ""

    .line 91
    .local v1, esn:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->internalClass:Ljava/lang/Class;

    const-string v4, "getEsn"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 92
    .local v2, m:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->obj:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    return-object v1

    .line 94
    .end local v2           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getHomeSidNid()Ljava/lang/String;
    .locals 6

    .prologue
    .line 61
    const-string v1, ""

    .line 63
    .local v1, homeSidNid:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->internalClass:Ljava/lang/Class;

    const-string v4, "getHomeSidNid"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 64
    .local v2, m:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->obj:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    return-object v1

    .line 66
    .end local v2           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getImsiMin1()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 33
    check-cast v1, [Ljava/lang/String;

    .line 35
    .local v1, imsiMin1:[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->internalClass:Ljava/lang/Class;

    const-string v4, "getImsiMin1"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 36
    .local v2, m:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->obj:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #imsiMin1:[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .restart local v1       #imsiMin1:[Ljava/lang/String;
    return-object v1

    .line 38
    .end local v1           #imsiMin1:[Ljava/lang/String;
    .end local v2           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getImsiMin2()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 47
    check-cast v1, [Ljava/lang/String;

    .line 49
    .local v1, imsiMin2:[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->internalClass:Ljava/lang/Class;

    const-string v4, "getImsiMin2"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 50
    .local v2, m:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->obj:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #imsiMin2:[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .restart local v1       #imsiMin2:[Ljava/lang/String;
    return-object v1

    .line 52
    .end local v1           #imsiMin2:[Ljava/lang/String;
    .end local v2           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getMeid()Ljava/lang/String;
    .locals 6

    .prologue
    .line 103
    const-string v2, ""

    .line 105
    .local v2, meid:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->internalClass:Ljava/lang/Class;

    const-string v4, "getMeid"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 106
    .local v1, m:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->obj:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 113
    return-object v2

    .line 108
    .end local v1           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 117
    const-string v2, ""

    .line 119
    .local v2, prlVersion:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->internalClass:Ljava/lang/Class;

    const-string v4, "getPrlVersion"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 120
    .local v1, m:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->obj:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 127
    return-object v2

    .line 122
    .end local v1           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getProfileSetting(II)Ljava/lang/Object;
    .locals 10
    .parameter "i"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 131
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 132
    .local v2, retObj:Ljava/lang/Object;
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->internalClass:Ljava/lang/Class;

    const-string v4, "getProfileSetting"

    new-array v5, v9, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 133
    .local v1, m:Ljava/lang/reflect/Method;
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    .line 135
    .local v0, args:[Ljava/lang/Object;
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 137
    return-object v2
.end method

.method public getUeImei()[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 19
    check-cast v1, [B

    .line 21
    .local v1, imei:[B
    :try_start_0
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->internalClass:Ljava/lang/Class;

    const-string v4, "getUeImei"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 22
    .local v2, m:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/djc/testreflect/QcNvItemsFromReflect;->obj:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #imei:[B
    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .restart local v1       #imei:[B
    return-object v1

    .line 24
    .end local v1           #imei:[B
    .end local v2           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 25
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

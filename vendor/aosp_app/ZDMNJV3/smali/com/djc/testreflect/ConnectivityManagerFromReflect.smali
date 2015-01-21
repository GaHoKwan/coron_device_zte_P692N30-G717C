.class public Lcom/djc/testreflect/ConnectivityManagerFromReflect;
.super Lcom/djc/testreflect/ObjectFromReflect;
.source "ConnectivityManagerFromReflect.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.net.ConnectivityManager"


# instance fields
.field public final TYPE_BLUETOOTH:I

.field public final TYPE_MOBILE_VZWADMIN:I

.field public final TYPE_MOBILE_VZWAPP:I

.field public final TYPE_MOBILE_VZWIMS:I


# direct methods
.method private constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lcom/djc/testreflect/ObjectFromReflect;-><init>()V

    .line 18
    const-string v0, "android.net.ConnectivityManager"

    invoke-virtual {p0, v0}, Lcom/djc/testreflect/ConnectivityManagerFromReflect;->initClass(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/djc/testreflect/ConnectivityManagerFromReflect;->internalClass:Ljava/lang/Class;

    const-string v1, "TYPE_BLUETOOTH"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/djc/testreflect/ConnectivityManagerFromReflect;->TYPE_BLUETOOTH:I

    .line 20
    iget-object v0, p0, Lcom/djc/testreflect/ConnectivityManagerFromReflect;->internalClass:Ljava/lang/Class;

    const-string v1, "TYPE_MOBILE_VZWIMS"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/djc/testreflect/ConnectivityManagerFromReflect;->TYPE_MOBILE_VZWIMS:I

    .line 21
    iget-object v0, p0, Lcom/djc/testreflect/ConnectivityManagerFromReflect;->internalClass:Ljava/lang/Class;

    const-string v1, "TYPE_MOBILE_VZWADMIN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/djc/testreflect/ConnectivityManagerFromReflect;->TYPE_MOBILE_VZWADMIN:I

    .line 22
    iget-object v0, p0, Lcom/djc/testreflect/ConnectivityManagerFromReflect;->internalClass:Ljava/lang/Class;

    const-string v1, "TYPE_MOBILE_VZWAPP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/djc/testreflect/ConnectivityManagerFromReflect;->TYPE_MOBILE_VZWAPP:I

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/djc/testreflect/ConnectivityManagerFromReflect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Lcom/djc/testreflect/ConnectivityManagerFromReflect;

    invoke-direct {v0}, Lcom/djc/testreflect/ConnectivityManagerFromReflect;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getMobileDataEnabled(Ljava/lang/Object;)Z
    .locals 4
    .parameter "initedObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 32
    iget-object v1, p0, Lcom/djc/testreflect/ConnectivityManagerFromReflect;->internalClass:Ljava/lang/Class;

    const-string v2, "getMobileDataEnabled"

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 33
    .local v0, m:Ljava/lang/reflect/Method;
    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public requestRouteToHostAddress(Ljava/lang/Object;ILjava/net/InetAddress;)Z
    .locals 9
    .parameter "initedObj"
    .parameter "networkType"
    .parameter "hostAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 38
    iget-object v2, p0, Lcom/djc/testreflect/ConnectivityManagerFromReflect;->internalClass:Ljava/lang/Class;

    const-string v3, "requestRouteToHostAddress"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    const-class v5, Ljava/net/InetAddress;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 39
    .local v1, m:Ljava/lang/reflect/Method;
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    aput-object p3, v0, v7

    .line 40
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public setMobileDataEnabled(Ljava/lang/Object;Z)V
    .locals 8
    .parameter "initedObj"
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 26
    iget-object v2, p0, Lcom/djc/testreflect/ConnectivityManagerFromReflect;->internalClass:Ljava/lang/Class;

    const-string v3, "setMobileDataEnabled"

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 27
    .local v1, m:Ljava/lang/reflect/Method;
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v6

    .line 28
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

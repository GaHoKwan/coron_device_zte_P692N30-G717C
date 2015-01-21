.class public Lcom/djc/testreflect/LocationManagerFromReflect;
.super Lcom/djc/testreflect/ObjectFromReflect;
.source "LocationManagerFromReflect.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.location.LocationManager"


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/djc/testreflect/ObjectFromReflect;-><init>()V

    .line 13
    const-string v0, "android.location.LocationManager"

    invoke-virtual {p0, v0}, Lcom/djc/testreflect/LocationManagerFromReflect;->initClass(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/djc/testreflect/LocationManagerFromReflect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 9
    new-instance v0, Lcom/djc/testreflect/LocationManagerFromReflect;

    invoke-direct {v0}, Lcom/djc/testreflect/LocationManagerFromReflect;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isGPSEnable(Ljava/lang/Object;)Z
    .locals 6
    .parameter "initedObj"

    .prologue
    .line 17
    const/4 v1, 0x0

    .line 19
    .local v1, isGPSEnable:Z
    :try_start_0
    iget-object v3, p0, Lcom/djc/testreflect/LocationManagerFromReflect;->internalClass:Ljava/lang/Class;

    const-string v4, "isGPSEnable"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 20
    .local v2, m:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 26
    return v1

    .line 22
    .end local v2           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

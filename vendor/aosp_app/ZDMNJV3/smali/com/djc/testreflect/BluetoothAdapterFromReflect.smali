.class public Lcom/djc/testreflect/BluetoothAdapterFromReflect;
.super Lcom/djc/testreflect/ObjectFromReflect;
.source "BluetoothAdapterFromReflect.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.bluetooth.BluetoothAdapter"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/djc/testreflect/ObjectFromReflect;-><init>()V

    .line 13
    const-string v0, "android.bluetooth.BluetoothAdapter"

    invoke-virtual {p0, v0}, Lcom/djc/testreflect/BluetoothAdapterFromReflect;->initClass(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/djc/testreflect/BluetoothAdapterFromReflect;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/djc/testreflect/BluetoothAdapterFromReflect;

    invoke-direct {v0}, Lcom/djc/testreflect/BluetoothAdapterFromReflect;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setScanMode(Ljava/lang/Object;I)Z
    .locals 9
    .parameter "initedObj"
    .parameter "mode"

    .prologue
    .line 17
    const/4 v1, 0x0

    .line 19
    .local v1, bSuccess:Z
    :try_start_0
    iget-object v4, p0, Lcom/djc/testreflect/BluetoothAdapterFromReflect;->internalClass:Ljava/lang/Class;

    const-string v5, "setScanMode"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 20
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 21
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {v3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 27
    return v1

    .line 23
    .end local v0           #args:[Ljava/lang/Object;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 24
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

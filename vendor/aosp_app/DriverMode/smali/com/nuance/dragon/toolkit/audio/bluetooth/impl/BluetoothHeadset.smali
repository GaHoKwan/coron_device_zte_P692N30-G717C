.class public Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String;

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String;

.field public static final AUDIO_STATE_CONNECTED:I

.field public static final AUDIO_STATE_DISCONNECTED:I

.field public static final EXTRA_AUDIO_STATE:Ljava/lang/String;

.field public static final EXTRA_STATE:Ljava/lang/String;

.field public static final STATE_CONNECTED:I

.field public static final STATE_CONNECTING:I

.field public static final STATE_DISCONNECTED:I

.field public static final STATE_ERROR:I

.field private static final b:Ljava/lang/reflect/Constructor;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/reflect/Method;

.field private static final h:Ljava/lang/reflect/Method;

.field private static final i:Ljava/lang/reflect/Method;

.field private static final j:Ljava/lang/Class;

.field private static final k:Z


# instance fields
.field a:Landroid/os/Handler;

.field private l:Ljava/lang/Object;

.field private m:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$ServiceListener;

.field private n:Ljava/lang/Runnable;

.field private o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;

    invoke-direct {v4}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;-><init>()V

    const-string v0, "android.bluetooth.BluetoothHeadset"

    invoke-virtual {v4, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v0, "android.bluetooth.BluetoothHeadset$ServiceListener"

    invoke-virtual {v4, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    aput-object v6, v0, v1

    invoke-virtual {v4, v5, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->b:Ljava/lang/reflect/Constructor;

    const-string v0, "getState"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getMethodOrNull(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "getState"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v7, Landroid/bluetooth/BluetoothDevice;

    aput-object v7, v3, v2

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    :goto_0
    sput-object v3, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->c:Ljava/lang/reflect/Method;

    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->k:Z

    const-string v0, "getCurrentHeadset"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->f:Ljava/lang/reflect/Method;

    const-string v0, "connectHeadset"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v7, Landroid/bluetooth/BluetoothDevice;

    aput-object v7, v3, v2

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->h:Ljava/lang/reflect/Method;

    const-string v0, "disconnectHeadset"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v0, v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getMethodOrNull(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "disconnectHeadset"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Landroid/bluetooth/BluetoothDevice;

    aput-object v3, v1, v2

    invoke-virtual {v4, v5, v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :cond_0
    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->g:Ljava/lang/reflect/Method;

    const-string v0, "startVoiceRecognition"

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->d:Ljava/lang/reflect/Method;

    const-string v0, "stopVoiceRecognition"

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->e:Ljava/lang/reflect/Method;

    const-string v0, "close"

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->i:Ljava/lang/reflect/Method;

    sput-object v6, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->j:Ljava/lang/Class;

    const-string v0, "ACTION_STATE_CHANGED"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->ACTION_STATE_CHANGED:Ljava/lang/String;

    const-string v0, "ACTION_AUDIO_STATE_CHANGED"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String;

    const-string v0, "EXTRA_STATE"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->EXTRA_STATE:Ljava/lang/String;

    const-string v0, "EXTRA_AUDIO_STATE"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->EXTRA_AUDIO_STATE:Ljava/lang/String;

    const-string v0, "STATE_ERROR"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->STATE_ERROR:I

    const-string v0, "STATE_DISCONNECTED"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->STATE_DISCONNECTED:I

    const-string v0, "STATE_CONNECTING"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->STATE_CONNECTING:I

    const-string v0, "STATE_CONNECTED"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->STATE_CONNECTED:I

    const-string v0, "AUDIO_STATE_DISCONNECTED"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->AUDIO_STATE_DISCONNECTED:I

    const-string v0, "AUDIO_STATE_CONNECTED"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->AUDIO_STATE_CONNECTED:I

    return-void

    :cond_1
    move-object v3, v0

    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$ServiceListener;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->a:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$1;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$1;-><init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->n:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$2;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$2;-><init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->o:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->m:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$ServiceListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->j:Ljava/lang/Class;

    aput-object v2, v1, v3

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$3;

    invoke-direct {v2, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$3;-><init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->b:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->l:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$ServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->m:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$ServiceListener;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->o:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->i:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->l:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->h:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->l:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public disconnectHeadset()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->l:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->l:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->f:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->l:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getState()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->k:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->f:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->l:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->l:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->c:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->l:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public startVoiceRecognition()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->d:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->l:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public stopVoiceRecognition()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->e:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->l:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

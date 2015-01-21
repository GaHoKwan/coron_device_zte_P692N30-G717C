.class public Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = null

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = null

.field protected static final ADAPTER_CLASSNAME:Ljava/lang/String; = "android.bluetooth.BluetoothAdapter"

#the value of this static final field might be set in the static constructor
.field public static final AUDIO_STATE_CONNECTED:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AUDIO_STATE_CONNECTING:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AUDIO_STATE_DISCONNECTED:I = 0x0

.field protected static final DEVICE_CLASSNAME:Ljava/lang/String; = "android.bluetooth.BluetoothDevice"

.field public static final EXTRA_AUDIO_STATE:Ljava/lang/String; = null

.field public static final EXTRA_STATE:Ljava/lang/String; = null

.field protected static final HEADSET_CLASSNAME:Ljava/lang/String; = "android.bluetooth.BluetoothHeadset"

.field protected static final LISTENER_CLASSNAME:Ljava/lang/String; = "android.bluetooth.BluetoothProfile$ServiceListener"

.field protected static final PROFILE_CLASSNAME:Ljava/lang/String; = "android.bluetooth.BluetoothProfile"

.field public static final STATE_CONNECTED:I

.field public static final STATE_CONNECTING:I

.field public static final STATE_DISCONNECTED:I

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/reflect/Method;

.field private static final h:Ljava/lang/reflect/Method;

.field private static final i:Ljava/lang/reflect/Method;

.field private static final j:Ljava/lang/Class;

.field private static final k:I


# instance fields
.field a:Landroid/os/Handler;

.field private l:Landroid/bluetooth/BluetoothAdapter;

.field private m:Ljava/lang/Object;

.field private n:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;

.field private o:Ljava/lang/Runnable;

.field private p:Ljava/lang/Runnable;

.field private q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;-><init>()V

    const-string v0, "android.bluetooth.BluetoothHeadset"

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v0, "android.bluetooth.BluetoothProfile$ServiceListener"

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "android.bluetooth.BluetoothProfile"

    invoke-virtual {v1, v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getConnectionState"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Landroid/bluetooth/BluetoothDevice;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v4, v5}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->b:Ljava/lang/reflect/Method;

    const-string v4, "getConnectedDevices"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4, v5}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->e:Ljava/lang/reflect/Method;

    const-string v4, "connect"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Landroid/bluetooth/BluetoothDevice;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v4, v5}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->g:Ljava/lang/reflect/Method;

    const-string v4, "disconnect"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Landroid/bluetooth/BluetoothDevice;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v4, v5}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->f:Ljava/lang/reflect/Method;

    const-string v4, "android.bluetooth.BluetoothHeadset"

    const-string v5, "startVoiceRecognition"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "android.bluetooth.BluetoothDevice"

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/ReflectionFactory;->getMethodFromStrings(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->c:Ljava/lang/reflect/Method;

    const-string v4, "android.bluetooth.BluetoothHeadset"

    const-string v5, "stopVoiceRecognition"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "android.bluetooth.BluetoothDevice"

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/ReflectionFactory;->getMethodFromStrings(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->d:Ljava/lang/reflect/Method;

    const-string v4, "android.bluetooth.BluetoothAdapter"

    const-string v5, "getProfileProxy"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "android.content.Context"

    aput-object v7, v6, v8

    const-string v7, "android.bluetooth.BluetoothProfile$ServiceListener"

    aput-object v7, v6, v9

    const-string v7, "int"

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/ReflectionFactory;->getMethodFromStrings(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->h:Ljava/lang/reflect/Method;

    const-string v4, "android.bluetooth.BluetoothAdapter"

    const-string v5, "closeProfileProxy"

    new-array v6, v10, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    aput-object v3, v6, v9

    invoke-static {v4, v5, v6}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/ReflectionFactory;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->i:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->j:Ljava/lang/Class;

    const-string v0, "HEADSET"

    invoke-virtual {v1, v3, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->k:I

    const-string v0, "ACTION_CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->ACTION_STATE_CHANGED:Ljava/lang/String;

    const-string v0, "ACTION_AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String;

    const-string v0, "EXTRA_STATE"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->EXTRA_STATE:Ljava/lang/String;

    const-string v0, "EXTRA_STATE"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->EXTRA_AUDIO_STATE:Ljava/lang/String;

    const-string v0, "STATE_DISCONNECTED"

    invoke-virtual {v1, v3, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->STATE_DISCONNECTED:I

    const-string v0, "STATE_CONNECTING"

    invoke-virtual {v1, v3, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->STATE_CONNECTING:I

    const-string v0, "STATE_CONNECTED"

    invoke-virtual {v1, v3, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->STATE_CONNECTED:I

    const-string v0, "STATE_AUDIO_DISCONNECTED"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->AUDIO_STATE_DISCONNECTED:I

    const-string v0, "STATE_AUDIO_CONNECTED"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->AUDIO_STATE_CONNECTED:I

    const-string v0, "STATE_AUDIO_CONNECTING"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->AUDIO_STATE_CONNECTING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->a:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$1;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$1;-><init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->o:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$2;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$2;-><init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->p:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$3;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$3;-><init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->q:Ljava/lang/Runnable;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->l:Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->n:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->j:Ljava/lang/Class;

    aput-object v2, v1, v3

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;

    invoke-direct {v2, p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;-><init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->h:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->l:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    sget v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to get BT profile proxy"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IllegalAccessException calling sGetProfileProxy"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "InvocationTargetException calling sGetProfileProxy"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->n:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->m:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->q:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 5

    const-string v0, "BluetoothHeadset_3_0"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->m:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHeadset_3_0"

    const-string v1, "close(), calling closeProfileProxy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->i:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->l:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->m:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BluetoothHeadset_3_0"

    const-string v2, "close(), exception()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->g:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->m:Ljava/lang/Object;

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
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->m:Ljava/lang/Object;

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
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->m:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->m:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->e:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->m:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    .locals 7

    sget v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->STATE_DISCONNECTED:I

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->m:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->b:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->m:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    move v1, v0

    move-object v0, v2

    :goto_1
    const-string v2, "BluetoothHeadset_3_0"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getState: state = <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">, device = <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ">, mBluetoothHeadset = <"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->m:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public startVoiceRecognition()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->c:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->m:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    aput-object v5, v3, v4

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
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->d:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->m:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    aput-object v5, v3, v4

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

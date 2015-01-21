.class public Lcom/android/wifidirect/test/WifiConnectionListen;
.super Ljava/lang/Object;
.source "WifiConnectionListen.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifidirect/test/WifiConnectionListen$UdpCSendIp;,
        Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;,
        Lcom/android/wifidirect/test/WifiConnectionListen$EventHandler;
    }
.end annotation


# static fields
.field private static final DELAY_SEND_IP:I = 0xa

.field private static INSTANCE:Lcom/android/wifidirect/test/WifiConnectionListen; = null

.field private static INSTANCE_LOCK:Ljava/lang/Object; = null

.field private static final MAX_DATA_PACKET_LENGTH:I = 0x50

.field public static final TAG:Ljava/lang/String; = "WifiConnectionListen"

.field private static myWfdAddr:Ljava/lang/String;


# instance fields
.field private hm:Ljava/util/HashMap;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/wifidirect/test/WifiConnectionListen$EventHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInitialized:Z

.field private us:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/wifidirect/test/WifiConnectionListen;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/android/wifidirect/test/WifiConnectionListen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiConnectionListen;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/wifidirect/test/WifiConnectionListen;->myWfdAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/wifidirect/test/WifiConnectionListen;)Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->us:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/wifidirect/test/WifiConnectionListen;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->hm:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiConnectionListen;
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    sget-object v1, Lcom/android/wifidirect/test/WifiConnectionListen;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/android/wifidirect/test/WifiConnectionListen;->INSTANCE:Lcom/android/wifidirect/test/WifiConnectionListen;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/wifidirect/test/WifiConnectionListen;

    invoke-direct {v0}, Lcom/android/wifidirect/test/WifiConnectionListen;-><init>()V

    sput-object v0, Lcom/android/wifidirect/test/WifiConnectionListen;->INSTANCE:Lcom/android/wifidirect/test/WifiConnectionListen;

    .line 50
    :cond_0
    sget-object v0, Lcom/android/wifidirect/test/WifiConnectionListen;->INSTANCE:Lcom/android/wifidirect/test/WifiConnectionListen;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/WifiConnectionListen;->init(Landroid/content/Context;)Z

    .line 51
    sget-object v0, Lcom/android/wifidirect/test/WifiConnectionListen;->INSTANCE:Lcom/android/wifidirect/test/WifiConnectionListen;

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLocalIPAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 294
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 295
    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 296
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 297
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 299
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "192.168.49"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 301
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 308
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    .line 305
    :catch_0
    move-exception v2

    .line 306
    .local v2, ex:Ljava/net/SocketException;
    const-string v5, "WifiConnectionListen"

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v2           #ex:Ljava/net/SocketException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 69
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return v3

    .line 71
    :cond_0
    iput-boolean v3, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->mInitialized:Z

    .line 72
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiConnectionListen"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->mHandlerThread:Landroid/os/HandlerThread;

    .line 76
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    new-instance v0, Lcom/android/wifidirect/test/WifiConnectionListen$EventHandler;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/wifidirect/test/WifiConnectionListen$EventHandler;-><init>(Lcom/android/wifidirect/test/WifiConnectionListen;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->mHandler:Lcom/android/wifidirect/test/WifiConnectionListen$EventHandler;

    .line 79
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->hm:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public GetClientIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "remoteAddr"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 110
    const/4 v4, 0x0

    .line 111
    .local v4, mClinetIp:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->hm:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    .local v3, key:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->hm:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 114
    .local v7, value:Ljava/lang/String;
    const-string v8, "WifiConnectionListen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v3           #key:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->hm:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 119
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->hm:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #mClinetIp:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 124
    .restart local v4       #mClinetIp:Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 126
    const/4 v0, 0x1

    .line 127
    .local v0, i:I
    const-string v6, ""

    .line 129
    .local v6, propName:Ljava/lang/String;
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wlan.p2p.groupclient"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, prop:Ljava/lang/String;
    const-string v8, "WifiConnectionListen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wpr prop is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 140
    .end local v0           #i:I
    .end local v5           #prop:Ljava/lang/String;
    .end local v6           #propName:Ljava/lang/String;
    :cond_2
    const-string v8, "WifiConnectionListen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " GetClientIp mClinetIp  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-object v4

    .line 120
    :cond_3
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->hm:Ljava/util/HashMap;

    const-string v9, "OldVersion"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 122
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->hm:Ljava/util/HashMap;

    const-string v9, "OldVersion"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #mClinetIp:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #mClinetIp:Ljava/lang/String;
    goto :goto_1

    .line 133
    .restart local v0       #i:I
    .restart local v5       #prop:Ljava/lang/String;
    .restart local v6       #propName:Ljava/lang/String;
    :cond_4
    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, ipStr:[Ljava/lang/String;
    aget-object v8, v2, v11

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 135
    aget-object v4, v2, v12

    .line 136
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->hm:Ljava/util/HashMap;

    aget-object v9, v2, v11

    aget-object v10, v2, v12

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public SetMyWfdAddr(Ljava/lang/String;)V
    .locals 3
    .parameter "wfdAddr"

    .prologue
    .line 57
    const-string v0, "WifiConnectionListen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetMyWfdAddr clientAddr  wfdAddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sput-object p1, Lcom/android/wifidirect/test/WifiConnectionListen;->myWfdAddr:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 144
    const-string v1, "WifiConnectionListen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isGroupOwner  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sput-object p1, Lcom/android/wifidirect/test/Constants;->mInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 151
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->us:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    if-nez v1, :cond_0

    .line 153
    new-instance v1, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    const/16 v2, 0x7a12

    invoke-direct {v1, p0, v2}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;-><init>(Lcom/android/wifidirect/test/WifiConnectionListen;I)V

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->us:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->us:Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/WifiConnectionListen$UdpSReceiveIp;->startUdps()V

    .line 157
    iget-boolean v1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v1, :cond_2

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    iget-boolean v1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->mHandler:Lcom/android/wifidirect/test/WifiConnectionListen$EventHandler;

    const/16 v2, 0xa

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/wifidirect/test/WifiConnectionListen$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 160
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiConnectionListen;->mHandler:Lcom/android/wifidirect/test/WifiConnectionListen$EventHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/wifidirect/test/WifiConnectionListen$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

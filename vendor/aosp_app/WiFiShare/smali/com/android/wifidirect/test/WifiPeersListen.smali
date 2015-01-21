.class public Lcom/android/wifidirect/test/WifiPeersListen;
.super Ljava/lang/Object;
.source "WifiPeersListen.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "WifiPeersListen"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0
    .parameter "peers"

    .prologue
    .line 21
    sput-object p1, Lcom/android/wifidirect/test/Constants;->finalPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 22
    return-void
.end method

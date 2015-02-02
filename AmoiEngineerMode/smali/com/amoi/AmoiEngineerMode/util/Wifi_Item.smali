.class public Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;
.super Ljava/lang/Object;
.source "Wifi_Item.java"


# instance fields
.field mMAC:Ljava/lang/String;

.field mRSSI:Ljava/lang/String;

.field mSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ssid"
    .parameter "rssi"
    .parameter "mac"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;->mSSID:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;->mRSSI:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;->mMAC:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;->mMAC:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;->mRSSI:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .parameter "mac"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;->mMAC:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setRssi(Ljava/lang/String;)V
    .locals 0
    .parameter "rssi"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;->mRSSI:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .parameter "ssid"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;->mSSID:Ljava/lang/String;

    .line 29
    return-void
.end method

.class public Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;
.super Ljava/lang/Object;
.source "SetFolderRequest.java"


# instance fields
.field private mAddr:Ljava/lang/String;

.field private mFolder:Ljava/lang/String;

.field private mMasId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "masId"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;->mMasId:I

    .line 47
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;->mAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;->mFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getMasId()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;->mMasId:I

    return v0
.end method

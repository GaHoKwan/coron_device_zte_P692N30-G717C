.class public Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "MediaGetStorageStateRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private mExternalStoragePath:Ljava/lang/String;

.field private mInternalStoragePath:Ljava/lang/String;

.field private mSdSwap:Z

.field private storageState:[Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 33
    const/high16 v0, 0x111

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 35
    return-void
.end method


# virtual methods
.method public getStorageState()[Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;->storageState:[Z

    return-object v0
.end method

.method public getmExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;->mExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public getmInternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;->mInternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public ismSdSwap()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;->mSdSwap:Z

    return v0
.end method

.method public setStorageState([Z)V
    .locals 0
    .parameter "storageState"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;->storageState:[Z

    .line 62
    return-void
.end method

.method public setmExternalStoragePath(Ljava/lang/String;)V
    .locals 0
    .parameter "mExternalStoragePath"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;->mExternalStoragePath:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setmInternalStoragePath(Ljava/lang/String;)V
    .locals 0
    .parameter "mInternalStoragePath"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;->mInternalStoragePath:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setmSdSwap(Z)V
    .locals 0
    .parameter "mSdSwap"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;->mSdSwap:Z

    .line 66
    return-void
.end method

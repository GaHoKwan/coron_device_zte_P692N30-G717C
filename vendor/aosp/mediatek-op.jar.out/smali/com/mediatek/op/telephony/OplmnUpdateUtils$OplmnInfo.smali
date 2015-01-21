.class Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;
.super Ljava/lang/Object;
.source "OplmnUpdateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op/telephony/OplmnUpdateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OplmnInfo"
.end annotation


# instance fields
.field private mAddr:Ljava/lang/String;

.field private mMd5:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 490
    iput-object p1, p0, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->mVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 490
    iput-object p1, p0, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->mAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 490
    iput-object p1, p0, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->mMd5:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->mAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->mMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAddr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->mAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mMd5 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->mMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

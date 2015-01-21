.class public final Ltmsdk/bg/module/network/CorrectionDataInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private vx:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/bg/module/network/CorrectionDataInfo;->vx:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/bg/module/network/CorrectionDataInfo;->mMessage:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "address"
    .parameter "message"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/bg/module/network/CorrectionDataInfo;->vx:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/bg/module/network/CorrectionDataInfo;->mMessage:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, p1}, Ltmsdk/bg/module/network/CorrectionDataInfo;->setAddress(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2}, Ltmsdk/bg/module/network/CorrectionDataInfo;->setMessage(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ltmsdk/bg/module/network/CorrectionDataInfo;->vx:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ltmsdk/bg/module/network/CorrectionDataInfo;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Ltmsdk/bg/module/network/CorrectionDataInfo;->vx:Ljava/lang/String;

    .line 28
    return-void

    .line 27
    .restart local p1
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Ltmsdk/bg/module/network/CorrectionDataInfo;->mMessage:Ljava/lang/String;

    .line 36
    return-void

    .line 35
    .restart local p1
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

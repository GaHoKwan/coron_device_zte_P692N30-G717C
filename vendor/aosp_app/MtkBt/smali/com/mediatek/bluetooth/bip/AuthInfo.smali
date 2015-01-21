.class Lcom/mediatek/bluetooth/bip/AuthInfo;
.super Ljava/lang/Object;
.source "BipImage.java"


# instance fields
.field public Passwd:Ljava/lang/String;

.field public UserId:Ljava/lang/String;

.field public bAuth:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "auth"
    .parameter "uid"
    .parameter "pwd"

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/bip/AuthInfo;->bAuth:Z

    .line 429
    iput-object p2, p0, Lcom/mediatek/bluetooth/bip/AuthInfo;->UserId:Ljava/lang/String;

    .line 430
    iput-object p3, p0, Lcom/mediatek/bluetooth/bip/AuthInfo;->Passwd:Ljava/lang/String;

    .line 431
    return-void
.end method

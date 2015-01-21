.class Lcom/mediatek/bluetooth/bpp/AuthInfo;
.super Ljava/lang/Object;
.source "BluetoothBppServer.java"


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
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/bpp/AuthInfo;->bAuth:Z

    .line 695
    iput-object p2, p0, Lcom/mediatek/bluetooth/bpp/AuthInfo;->UserId:Ljava/lang/String;

    .line 696
    iput-object p3, p0, Lcom/mediatek/bluetooth/bpp/AuthInfo;->Passwd:Ljava/lang/String;

    .line 697
    return-void
.end method

.class public Lcom/mediatek/apst/util/communication/connManager/ConnDisconnectExpt;
.super Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;
.source "ConnDisconnectExpt.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private exceptionObj:Ljava/io/IOException;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;-><init>(II)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/apst/util/communication/connManager/ConnDisconnectExpt;->exceptionObj:Ljava/io/IOException;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 2
    .parameter "expt"

    .prologue
    .line 71
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;-><init>(II)V

    .line 72
    iput-object p1, p0, Lcom/mediatek/apst/util/communication/connManager/ConnDisconnectExpt;->exceptionObj:Ljava/io/IOException;

    .line 73
    return-void
.end method


# virtual methods
.method public getExceptionObj()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/apst/util/communication/connManager/ConnDisconnectExpt;->exceptionObj:Ljava/io/IOException;

    return-object v0
.end method

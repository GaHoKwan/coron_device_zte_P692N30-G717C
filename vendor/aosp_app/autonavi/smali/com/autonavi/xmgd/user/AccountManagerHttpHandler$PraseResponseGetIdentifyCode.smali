.class public Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;
.super Lcom/autonavi/xmgd/user/PraseResponse;


# instance fields
.field desc:Ljava/lang/String;

.field expiryDate:Ljava/lang/String;

.field identifyCode:Ljava/lang/String;

.field rspcode:Ljava/lang/String;

.field rsptype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/PraseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "rsptype"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;->rsptype:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_1
    const-string v0, "rspcode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;->rspcode:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "identifyCode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;->identifyCode:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "desc"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;->desc:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "expiryDate"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;->expiryDate:Ljava/lang/String;

    goto :goto_0
.end method
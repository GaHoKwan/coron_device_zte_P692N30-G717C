.class public Lcom/mediatek/apst/util/entity/contacts/Account;
.super Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.source "Account.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Account;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Account;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Account;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 79
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Account;->mAccountName:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Account;->mAccountType:Ljava/lang/String;

    .line 81
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Account;->mDataSet:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .parameter "accountName"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Account;->mAccountName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .parameter "accountType"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Account;->mAccountType:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setDataSet(Ljava/lang/String;)V
    .locals 0
    .parameter "dataSet"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Account;->mDataSet:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public writeRaw(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Account;->mAccountName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Account;->mAccountType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Account;->mDataSet:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 93
    return-void
.end method

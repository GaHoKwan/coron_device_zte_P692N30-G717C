.class public Lcom/mediatek/apst/util/command/message/ResendSmsRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "ResendSmsRsp.java"


# static fields
.field public static final ERR_SMS_NOT_EXIST:Ljava/lang/String; = "Sms to resend does not exist!"

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private date:J

.field private simId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 73
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/apst/util/command/message/ResendSmsRsp;->simId:I

    .line 76
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/message/ResendSmsRsp;->date:J

    return-wide v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/mediatek/apst/util/command/message/ResendSmsRsp;->simId:I

    return v0
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/message/ResendSmsRsp;->date:J

    .line 103
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 115
    iput p1, p0, Lcom/mediatek/apst/util/command/message/ResendSmsRsp;->simId:I

    .line 116
    return-void
.end method

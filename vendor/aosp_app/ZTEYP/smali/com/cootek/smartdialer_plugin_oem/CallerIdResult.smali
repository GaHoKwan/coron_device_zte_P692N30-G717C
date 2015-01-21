.class public Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
.super Ljava/lang/Object;
.source "CallerIdResult.java"


# instance fields
.field private attribute:Ljava/lang/String;

.field private classify:Ljava/lang/String;

.field private classifyName:Ljava/lang/String;

.field private isVerified:Z

.field private isVip:Z

.field private markedCount:I

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private vipMsg:Ljava/lang/String;

.field private vipPhoto:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;[BZI)V
    .locals 0
    .parameter "number"
    .parameter "attribute"
    .parameter "name"
    .parameter "classify"
    .parameter "classifyName"
    .parameter "isVip"
    .parameter "vipMsg"
    .parameter "vipPhoto"
    .parameter "isVerified"
    .parameter "markedCount"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->number:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->attribute:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->name:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->classify:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->classifyName:Ljava/lang/String;

    .line 25
    iput-boolean p6, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->isVip:Z

    .line 26
    iput-object p7, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->vipMsg:Ljava/lang/String;

    .line 27
    iput-object p8, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->vipPhoto:[B

    .line 28
    iput-boolean p9, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->isVerified:Z

    .line 29
    iput p10, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->markedCount:I

    .line 30
    return-void
.end method


# virtual methods
.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->attribute:Ljava/lang/String;

    return-object v0
.end method

.method public getClassify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->classify:Ljava/lang/String;

    return-object v0
.end method

.method public getClassifyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->classifyName:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkedCount()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->markedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getVipMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->vipMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getVipPhoto()[B
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->vipPhoto:[B

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->isVerified:Z

    return v0
.end method

.method public isVip()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->isVip:Z

    return v0
.end method

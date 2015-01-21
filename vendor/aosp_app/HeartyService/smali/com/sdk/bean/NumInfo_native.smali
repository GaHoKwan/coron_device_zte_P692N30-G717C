.class public Lcom/sdk/bean/NumInfo_native;
.super Ljava/lang/Object;
.source "NumInfo_native.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "NumInfo_native"
.end annotation


# instance fields
.field private info:Ljava/lang/String;

.field private isSubmit:I

.field private number:Ljava/lang/String;
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sdk/bean/NumInfo_native;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSubmit()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/sdk/bean/NumInfo_native;->isSubmit:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sdk/bean/NumInfo_native;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sdk/bean/NumInfo_native;->info:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setIsSubmit(I)V
    .locals 0
    .parameter "isSubmit"

    .prologue
    .line 50
    iput p1, p0, Lcom/sdk/bean/NumInfo_native;->isSubmit:I

    .line 51
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sdk/bean/NumInfo_native;->number:Ljava/lang/String;

    .line 25
    return-void
.end method

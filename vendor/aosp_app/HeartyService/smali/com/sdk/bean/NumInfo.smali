.class public Lcom/sdk/bean/NumInfo;
.super Ljava/lang/Object;
.source "NumInfo.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "phoneSign"
.end annotation


# instance fields
.field private phone:Ljava/lang/String;
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
    .end annotation
.end field

.field private signtimes:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sdk/bean/NumInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getSigntimes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sdk/bean/NumInfo;->signtimes:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/sdk/bean/NumInfo;->type:I

    return v0
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sdk/bean/NumInfo;->phone:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setSigntimes(Ljava/lang/String;)V
    .locals 0
    .parameter "signtimes"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sdk/bean/NumInfo;->signtimes:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 32
    iput p1, p0, Lcom/sdk/bean/NumInfo;->type:I

    .line 33
    return-void
.end method

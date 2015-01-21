.class public Lcom/isw/android/corp/bean/CallBean;
.super Ljava/lang/Object;
.source "CallBean.java"


# instance fields
.field calltype:I

.field duration:I

.field number:Ljava/lang/String;

.field timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalltype()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/isw/android/corp/bean/CallBean;->calltype:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/isw/android/corp/bean/CallBean;->duration:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/isw/android/corp/bean/CallBean;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/isw/android/corp/bean/CallBean;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public setCalltype(I)V
    .locals 0
    .parameter "calltype"

    .prologue
    .line 58
    iput p1, p0, Lcom/isw/android/corp/bean/CallBean;->calltype:I

    .line 59
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 52
    iput p1, p0, Lcom/isw/android/corp/bean/CallBean;->duration:I

    .line 53
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/isw/android/corp/bean/CallBean;->number:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/isw/android/corp/bean/CallBean;->timestamp:Ljava/lang/String;

    .line 47
    return-void
.end method

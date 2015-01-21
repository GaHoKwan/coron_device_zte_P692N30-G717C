.class public Lcom/zte/retrieve/controller/IntentParaInfo;
.super Ljava/lang/Object;
.source "IntentParaInfo.java"


# instance fields
.field paraName:Ljava/lang/String;

.field paraValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "paraName"
    .parameter "paraValue"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/zte/retrieve/controller/IntentParaInfo;->paraName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/zte/retrieve/controller/IntentParaInfo;->paraValue:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getParaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/retrieve/controller/IntentParaInfo;->paraName:Ljava/lang/String;

    return-object v0
.end method

.method public getParaValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/retrieve/controller/IntentParaInfo;->paraValue:Ljava/lang/String;

    return-object v0
.end method

.method public setParaName(Ljava/lang/String;)V
    .locals 0
    .parameter "paraName"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zte/retrieve/controller/IntentParaInfo;->paraName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setParaValue(Ljava/lang/String;)V
    .locals 0
    .parameter "paraValue"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/zte/retrieve/controller/IntentParaInfo;->paraValue:Ljava/lang/String;

    .line 32
    return-void
.end method

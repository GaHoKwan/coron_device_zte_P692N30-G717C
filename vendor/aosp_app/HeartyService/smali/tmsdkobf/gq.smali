.class public Ltmsdkobf/gq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public nP:Ljava/lang/String;

.field public nQ:Ljava/lang/String;

.field public nR:Ljava/lang/String;

.field public nS:D

.field public nT:D

.field public nU:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
    .locals 3
    .parameter "name"
    .parameter "addr"
    .parameter "catalog"
    .parameter "dist"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v2, p0, Ltmsdkobf/gq;->nP:Ljava/lang/String;

    .line 14
    iput-object v2, p0, Ltmsdkobf/gq;->nQ:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Ltmsdkobf/gq;->nR:Ljava/lang/String;

    .line 22
    iput-wide v0, p0, Ltmsdkobf/gq;->nS:D

    .line 26
    iput-wide v0, p0, Ltmsdkobf/gq;->nT:D

    .line 30
    iput-wide v0, p0, Ltmsdkobf/gq;->nU:D

    .line 41
    iput-object p1, p0, Ltmsdkobf/gq;->nP:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Ltmsdkobf/gq;->nQ:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Ltmsdkobf/gq;->nR:Ljava/lang/String;

    .line 44
    iput-wide p4, p0, Ltmsdkobf/gq;->nS:D

    .line 45
    iput-wide p6, p0, Ltmsdkobf/gq;->nT:D

    .line 46
    iput-wide p8, p0, Ltmsdkobf/gq;->nU:D

    .line 47
    return-void
.end method

.method public constructor <init>(Ltmsdkobf/gq;)V
    .locals 3
    .parameter "poi"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v2, p0, Ltmsdkobf/gq;->nP:Ljava/lang/String;

    .line 14
    iput-object v2, p0, Ltmsdkobf/gq;->nQ:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Ltmsdkobf/gq;->nR:Ljava/lang/String;

    .line 22
    iput-wide v0, p0, Ltmsdkobf/gq;->nS:D

    .line 26
    iput-wide v0, p0, Ltmsdkobf/gq;->nT:D

    .line 30
    iput-wide v0, p0, Ltmsdkobf/gq;->nU:D

    .line 53
    iget-object v0, p1, Ltmsdkobf/gq;->nP:Ljava/lang/String;

    iput-object v0, p0, Ltmsdkobf/gq;->nP:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Ltmsdkobf/gq;->nQ:Ljava/lang/String;

    iput-object v0, p0, Ltmsdkobf/gq;->nQ:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Ltmsdkobf/gq;->nR:Ljava/lang/String;

    iput-object v0, p0, Ltmsdkobf/gq;->nR:Ljava/lang/String;

    .line 56
    iget-wide v0, p1, Ltmsdkobf/gq;->nS:D

    iput-wide v0, p0, Ltmsdkobf/gq;->nS:D

    .line 57
    iget-wide v0, p1, Ltmsdkobf/gq;->nT:D

    iput-wide v0, p0, Ltmsdkobf/gq;->nT:D

    .line 58
    iget-wide v0, p1, Ltmsdkobf/gq;->nU:D

    iput-wide v0, p0, Ltmsdkobf/gq;->nU:D

    .line 59
    return-void
.end method

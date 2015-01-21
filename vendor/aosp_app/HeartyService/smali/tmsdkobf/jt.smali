.class public Ltmsdkobf/jt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mVersion:I

.field private xv:I

.field private xw:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public bq(I)V
    .locals 0
    .parameter "mCreateTime"

    .prologue
    .line 61
    iput p1, p0, Ltmsdkobf/jt;->xv:I

    .line 62
    return-void
.end method

.method public eP()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Ltmsdkobf/jt;->xv:I

    return v0
.end method

.method public eQ()[B
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ltmsdkobf/jt;->xw:[B

    return-object v0
.end method

.method public q([B)V
    .locals 0
    .parameter "mDigestMd5Str"

    .prologue
    .line 77
    iput-object p1, p0, Ltmsdkobf/jt;->xw:[B

    .line 78
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "mVersion"

    .prologue
    .line 46
    iput p1, p0, Ltmsdkobf/jt;->mVersion:I

    .line 47
    return-void
.end method

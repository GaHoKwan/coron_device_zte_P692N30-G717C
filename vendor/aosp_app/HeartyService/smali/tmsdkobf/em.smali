.class public final Ltmsdkobf/em;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private kY:[B

.field private kb:I

.field private kn:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltmsdkobf/em;->kn:J

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Ltmsdkobf/em;->kb:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/em;->kY:[B

    return-void
.end method


# virtual methods
.method public final X()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Ltmsdkobf/em;->kn:J

    return-wide v0
.end method

.method public final Y()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Ltmsdkobf/em;->kb:I

    return v0
.end method

.method public final aG()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ltmsdkobf/em;->kY:[B

    return-object v0
.end method

.method public final av(I)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput p1, p0, Ltmsdkobf/em;->kb:I

    .line 41
    return-void
.end method

.method public final f([B)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Ltmsdkobf/em;->kY:[B

    .line 58
    return-void
.end method

.method public final h(J)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-wide p1, p0, Ltmsdkobf/em;->kn:J

    .line 26
    return-void
.end method

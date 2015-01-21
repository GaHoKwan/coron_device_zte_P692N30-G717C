.class public final Ltmsdkobf/ee;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private jV:Ljava/lang/String;

.field private kF:Ljava/lang/String;

.field private kI:Ljava/lang/String;

.field private kb:I

.field private kn:J

.field private kq:J

.field private kr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ltmsdkobf/ee;->jV:Ljava/lang/String;

    return-object v0
.end method

.method public final ac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ltmsdkobf/ee;->kI:Ljava/lang/String;

    return-object v0
.end method

.method public final ad()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Ltmsdkobf/ee;->kb:I

    return v0
.end method

.method public final ae()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ltmsdkobf/ee;->kF:Ljava/lang/String;

    return-object v0
.end method

.method public final an()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Ltmsdkobf/ee;->kq:J

    return-wide v0
.end method

.method public final ao()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Ltmsdkobf/ee;->kr:J

    return-wide v0
.end method

.method public final av(I)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput p1, p0, Ltmsdkobf/ee;->kb:I

    .line 72
    return-void
.end method

.method public final aw(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Ltmsdkobf/ee;->jV:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public final ax(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Ltmsdkobf/ee;->kI:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public final ay(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Ltmsdkobf/ee;->kF:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public final h(J)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-wide p1, p0, Ltmsdkobf/ee;->kn:J

    .line 22
    return-void
.end method

.method public final i(J)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-wide p1, p0, Ltmsdkobf/ee;->kq:J

    .line 42
    return-void
.end method

.method public final j(J)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-wide p1, p0, Ltmsdkobf/ee;->kr:J

    .line 52
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    const-string v1, "rqdp{   fT:}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    iget v1, p0, Ltmsdkobf/ee;->kb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 89
    const-string v1, "rqdp{   cid:}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-wide v1, p0, Ltmsdkobf/ee;->kn:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 91
    const-string v1, "rqdp{   fN:}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    iget-object v1, p0, Ltmsdkobf/ee;->jV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, "rqdp{   UT:}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    iget-wide v1, p0, Ltmsdkobf/ee;->kq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, "rqdp{   size:}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    iget-wide v1, p0, Ltmsdkobf/ee;->kr:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 97
    const-string v1, "rqdp{   SID:}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v1, p0, Ltmsdkobf/ee;->kI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v1, "rqdp{   ARCH:}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget-object v1, p0, Ltmsdkobf/ee;->kF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 103
    return-object v1
.end method

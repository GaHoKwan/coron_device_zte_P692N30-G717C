.class public final Ltmsdkobf/cr;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static final synthetic N:Z


# instance fields
.field public jc:Ljava/lang/String;

.field public jd:J

.field public je:I

.field public jf:Ljava/lang/String;

.field public jg:I

.field public jh:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/cr;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/cr;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cr;->jc:Ljava/lang/String;

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdkobf/cr;->jd:J

    .line 20
    iput v2, p0, Ltmsdkobf/cr;->je:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cr;->jf:Ljava/lang/String;

    .line 24
    iput v2, p0, Ltmsdkobf/cr;->jg:I

    .line 26
    iput v2, p0, Ltmsdkobf/cr;->jh:I

    .line 90
    iget-object v0, p0, Ltmsdkobf/cr;->jc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/cr;->ak(Ljava/lang/String;)V

    .line 91
    iget-wide v0, p0, Ltmsdkobf/cr;->jd:J

    invoke-virtual {p0, v0, v1}, Ltmsdkobf/cr;->a(J)V

    .line 92
    iget v0, p0, Ltmsdkobf/cr;->je:I

    invoke-virtual {p0, v0}, Ltmsdkobf/cr;->ao(I)V

    .line 93
    iget-object v0, p0, Ltmsdkobf/cr;->jf:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/cr;->al(Ljava/lang/String;)V

    .line 94
    iget v0, p0, Ltmsdkobf/cr;->jg:I

    invoke-virtual {p0, v0}, Ltmsdkobf/cr;->ap(I)V

    .line 95
    iget v0, p0, Ltmsdkobf/cr;->jh:I

    invoke-virtual {p0, v0}, Ltmsdkobf/cr;->aq(I)V

    .line 96
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0
    .parameter "packet_pos"

    .prologue
    .line 45
    iput-wide p1, p0, Ltmsdkobf/cr;->jd:J

    .line 46
    return-void
.end method

.method public ak(Ljava/lang/String;)V
    .locals 0
    .parameter "software_id"

    .prologue
    .line 35
    iput-object p1, p0, Ltmsdkobf/cr;->jc:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public al(Ljava/lang/String;)V
    .locals 0
    .parameter "checksum_type"

    .prologue
    .line 65
    iput-object p1, p0, Ltmsdkobf/cr;->jf:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public ao(I)V
    .locals 0
    .parameter "packet_size"

    .prologue
    .line 55
    iput p1, p0, Ltmsdkobf/cr;->je:I

    .line 56
    return-void
.end method

.method public ap(I)V
    .locals 0
    .parameter "checksun_len"

    .prologue
    .line 75
    iput p1, p0, Ltmsdkobf/cr;->jg:I

    .line 76
    return-void
.end method

.method public aq(I)V
    .locals 0
    .parameter "zip_type"

    .prologue
    .line 85
    iput p1, p0, Ltmsdkobf/cr;->jh:I

    .line 86
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 125
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 127
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 129
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/cr;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 110
    move-object v0, p1

    check-cast v0, Ltmsdkobf/cr;

    .line 111
    .local v0, t:Ltmsdkobf/cr;
    iget-object v1, p0, Ltmsdkobf/cr;->jc:Ljava/lang/String;

    iget-object v2, v0, Ltmsdkobf/cr;->jc:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Ltmsdkobf/cr;->jd:J

    iget-wide v3, v0, Ltmsdkobf/cr;->jd:J

    invoke-static {v1, v2, v3, v4}, Ltmsdkobf/dg;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Ltmsdkobf/cr;->je:I

    iget v2, v0, Ltmsdkobf/cr;->je:I

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltmsdkobf/cr;->jf:Ljava/lang/String;

    iget-object v2, v0, Ltmsdkobf/cr;->jf:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Ltmsdkobf/cr;->jg:I

    iget v2, v0, Ltmsdkobf/cr;->jg:I

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Ltmsdkobf/cr;->jh:I

    iget v2, v0, Ltmsdkobf/cr;->jh:I

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 147
    invoke-virtual {p1, v3, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cr;->ak(Ljava/lang/String;)V

    .line 149
    iget-wide v0, p0, Ltmsdkobf/cr;->jd:J

    invoke-virtual {p1, v0, v1, v2, v2}, Ltmsdkobf/dd;->a(JIZ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltmsdkobf/cr;->a(J)V

    .line 151
    iget v0, p0, Ltmsdkobf/cr;->je:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cr;->ao(I)V

    .line 153
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cr;->al(Ljava/lang/String;)V

    .line 155
    iget v0, p0, Ltmsdkobf/cr;->jg:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cr;->ap(I)V

    .line 157
    iget v0, p0, Ltmsdkobf/cr;->jh:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cr;->aq(I)V

    .line 159
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 3
    .parameter "_os"

    .prologue
    .line 136
    iget-object v0, p0, Ltmsdkobf/cr;->jc:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 137
    iget-wide v0, p0, Ltmsdkobf/cr;->jd:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/de;->a(JI)V

    .line 138
    iget v0, p0, Ltmsdkobf/cr;->je:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 139
    iget-object v0, p0, Ltmsdkobf/cr;->jf:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 140
    iget v0, p0, Ltmsdkobf/cr;->jg:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 141
    iget v0, p0, Ltmsdkobf/cr;->jh:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 142
    return-void
.end method

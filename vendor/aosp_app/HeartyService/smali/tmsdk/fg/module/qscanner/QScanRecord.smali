.class public final Ltmsdk/fg/module/qscanner/QScanRecord;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static ES:Ltmsdk/fg/module/qscanner/QScanResult;


# instance fields
.field public id:J

.field public result:Ltmsdk/fg/module/qscanner/QScanResult;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->id:J

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->result:Ltmsdk/fg/module/qscanner/QScanResult;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->state:I

    .line 19
    return-void
.end method

.method public constructor <init>(JLtmsdk/fg/module/qscanner/QScanResult;I)V
    .locals 2
    .parameter "id"
    .parameter "result"
    .parameter "state"

    .prologue
    .line 22
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->id:J

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->result:Ltmsdk/fg/module/qscanner/QScanResult;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->state:I

    .line 23
    iput-wide p1, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->id:J

    .line 24
    iput-object p3, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->result:Ltmsdk/fg/module/qscanner/QScanResult;

    .line 25
    iput p4, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->state:I

    .line 26
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 39
    iget-wide v0, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->id:J

    invoke-virtual {p1, v0, v1, v3, v2}, Ltmsdkobf/dd;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->id:J

    .line 40
    sget-object v0, Ltmsdk/fg/module/qscanner/QScanRecord;->ES:Ltmsdk/fg/module/qscanner/QScanResult;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ltmsdk/fg/module/qscanner/QScanResult;

    invoke-direct {v0}, Ltmsdk/fg/module/qscanner/QScanResult;-><init>()V

    sput-object v0, Ltmsdk/fg/module/qscanner/QScanRecord;->ES:Ltmsdk/fg/module/qscanner/QScanResult;

    .line 44
    :cond_0
    sget-object v0, Ltmsdk/fg/module/qscanner/QScanRecord;->ES:Ltmsdk/fg/module/qscanner/QScanResult;

    invoke-virtual {p1, v0, v2, v2}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v0

    check-cast v0, Ltmsdk/fg/module/qscanner/QScanResult;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->result:Ltmsdk/fg/module/qscanner/QScanResult;

    .line 45
    iget v0, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->state:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->state:I

    .line 46
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 3
    .parameter "_os"

    .prologue
    .line 30
    iget-wide v0, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->id:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/de;->a(JI)V

    .line 31
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->result:Ltmsdk/fg/module/qscanner/QScanResult;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 32
    iget v0, p0, Ltmsdk/fg/module/qscanner/QScanRecord;->state:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 33
    return-void
.end method

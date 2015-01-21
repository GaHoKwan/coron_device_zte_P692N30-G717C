.class public final Ltmsdk/fg/module/qscanner/QScanReport;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static ET:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/fg/module/qscanner/QScanRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:J

.field public records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/fg/module/qscanner/QScanRecord;",
            ">;"
        }
    .end annotation
.end field

.field public riskFound:I

.field public tips:Ljava/lang/String;

.field public type:I

.field public virusCured:I

.field public virusFound:I

.field public waitDealing:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->id:J

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->records:Ljava/util/ArrayList;

    .line 15
    iput v2, p0, Ltmsdk/fg/module/qscanner/QScanReport;->type:I

    .line 17
    iput v2, p0, Ltmsdk/fg/module/qscanner/QScanReport;->virusFound:I

    .line 19
    iput v2, p0, Ltmsdk/fg/module/qscanner/QScanReport;->virusCured:I

    .line 21
    iput v2, p0, Ltmsdk/fg/module/qscanner/QScanReport;->waitDealing:I

    .line 23
    iput v2, p0, Ltmsdk/fg/module/qscanner/QScanReport;->riskFound:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(JLjava/util/ArrayList;IIIIILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter
    .parameter "type"
    .parameter "virusFound"
    .parameter "virusCured"
    .parameter "waitDealing"
    .parameter "riskFound"
    .parameter "tips"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/fg/module/qscanner/QScanRecord;",
            ">;IIIII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/fg/module/qscanner/QScanRecord;>;"
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->id:J

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->records:Ljava/util/ArrayList;

    .line 15
    iput v2, p0, Ltmsdk/fg/module/qscanner/QScanReport;->type:I

    .line 17
    iput v2, p0, Ltmsdk/fg/module/qscanner/QScanReport;->virusFound:I

    .line 19
    iput v2, p0, Ltmsdk/fg/module/qscanner/QScanReport;->virusCured:I

    .line 21
    iput v2, p0, Ltmsdk/fg/module/qscanner/QScanReport;->waitDealing:I

    .line 23
    iput v2, p0, Ltmsdk/fg/module/qscanner/QScanReport;->riskFound:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    .line 33
    iput-wide p1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->id:J

    .line 34
    iput-object p3, p0, Ltmsdk/fg/module/qscanner/QScanReport;->records:Ljava/util/ArrayList;

    .line 35
    iput p4, p0, Ltmsdk/fg/module/qscanner/QScanReport;->type:I

    .line 36
    iput p5, p0, Ltmsdk/fg/module/qscanner/QScanReport;->virusFound:I

    .line 37
    iput p6, p0, Ltmsdk/fg/module/qscanner/QScanReport;->virusCured:I

    .line 38
    iput p7, p0, Ltmsdk/fg/module/qscanner/QScanReport;->waitDealing:I

    .line 39
    iput p8, p0, Ltmsdk/fg/module/qscanner/QScanReport;->riskFound:I

    .line 40
    iput-object p9, p0, Ltmsdk/fg/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 5
    .parameter "_is"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    iget-wide v1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->id:J

    invoke-virtual {p1, v1, v2, v3, v4}, Ltmsdkobf/dd;->a(JIZ)J

    move-result-wide v1

    iput-wide v1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->id:J

    .line 63
    sget-object v1, Ltmsdk/fg/module/qscanner/QScanReport;->ET:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltmsdk/fg/module/qscanner/QScanReport;->ET:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ltmsdk/fg/module/qscanner/QScanRecord;

    invoke-direct {v0}, Ltmsdk/fg/module/qscanner/QScanRecord;-><init>()V

    .line 67
    .local v0, __var_2:Ltmsdk/fg/module/qscanner/QScanRecord;
    sget-object v1, Ltmsdk/fg/module/qscanner/QScanReport;->ET:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v0           #__var_2:Ltmsdk/fg/module/qscanner/QScanRecord;
    :cond_0
    sget-object v1, Ltmsdk/fg/module/qscanner/QScanReport;->ET:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v4, v4}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->records:Ljava/util/ArrayList;

    .line 70
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->type:I

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->type:I

    .line 71
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->virusFound:I

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->virusFound:I

    .line 72
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->virusCured:I

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->virusCured:I

    .line 73
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->waitDealing:I

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->waitDealing:I

    .line 74
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->riskFound:I

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->riskFound:I

    .line 75
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 3
    .parameter "_os"

    .prologue
    .line 45
    iget-wide v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->id:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/de;->a(JI)V

    .line 46
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->records:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 47
    iget v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 48
    iget v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->virusFound:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 49
    iget v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->virusCured:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 50
    iget v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->waitDealing:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 51
    iget v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->riskFound:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 52
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 56
    :cond_0
    return-void
.end method

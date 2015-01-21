.class public Lcom/itextpdf/text/pdf/OutputStreamCounter;
.super Ljava/io/OutputStream;
.source "OutputStreamCounter.java"


# instance fields
.field protected counter:J

.field protected out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:J

    .line 59
    iput-object p1, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->out:Ljava/io/OutputStream;

    .line 60
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 74
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 90
    return-void
.end method

.method public getCounter()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:J

    return-wide v0
.end method

.method public resetCounter()V
    .locals 2

    .prologue
    .line 165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:J

    .line 166
    return-void
.end method

.method public write(I)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:J

    .line 124
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 125
    return-void
.end method

.method public write([B)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:J

    .line 104
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 105
    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->counter:J

    .line 157
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamCounter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 158
    return-void
.end method

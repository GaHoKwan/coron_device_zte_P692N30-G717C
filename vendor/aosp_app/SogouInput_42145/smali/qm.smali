.class public Lqm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final a:J

.field public final b:F


# direct methods
.method public constructor <init>(FFJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lqm;->a:F

    .line 34
    iput p2, p0, Lqm;->b:F

    .line 35
    iput-wide p3, p0, Lqm;->a:J

    .line 36
    return-void
.end method

.method static a(Ljava/io/DataInputStream;)Lqm;
    .locals 5
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 41
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 43
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 44
    new-instance v4, Lqm;

    invoke-direct {v4, v0, v1, v2, v3}, Lqm;-><init>(FFJ)V

    return-object v4
.end method

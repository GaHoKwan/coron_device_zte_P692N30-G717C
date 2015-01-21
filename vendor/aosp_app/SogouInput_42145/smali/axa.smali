.class public Laxa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public a:I

.field public b:D

.field public b:I

.field public c:D

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput v2, p0, Laxa;->a:I

    .line 295
    iput v2, p0, Laxa;->b:I

    .line 296
    iput v2, p0, Laxa;->c:I

    .line 297
    iput-wide v0, p0, Laxa;->a:D

    .line 298
    iput-wide v0, p0, Laxa;->b:D

    .line 299
    iput-wide v0, p0, Laxa;->c:D

    return-void
.end method

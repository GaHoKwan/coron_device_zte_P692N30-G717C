.class public Lary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public a:I

.field public a:Laws;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16430
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lary;->a:D

    .line 16431
    sget-object v0, Laws;->a:Laws;

    iput-object v0, p0, Lary;->a:Laws;

    return-void
.end method

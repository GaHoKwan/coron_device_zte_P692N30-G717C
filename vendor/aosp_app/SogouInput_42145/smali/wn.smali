.class public Lwn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public a:Ljava/lang/String;

.field public b:I

.field public b:Ljava/lang/String;

.field public c:I

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Lwn;->a:Ljava/lang/String;

    .line 404
    iput p2, p0, Lwn;->a:I

    .line 405
    iput-object p3, p0, Lwn;->b:Ljava/lang/String;

    .line 406
    iput p4, p0, Lwn;->b:I

    .line 407
    iput p5, p0, Lwn;->c:I

    .line 408
    iput p6, p0, Lwn;->d:I

    .line 409
    return-void
.end method

.class public final Lfh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Lfh;->a:I

    .line 234
    iput p2, p0, Lfh;->b:I

    .line 235
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lfh;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lfh;->b:I

    return v0
.end method

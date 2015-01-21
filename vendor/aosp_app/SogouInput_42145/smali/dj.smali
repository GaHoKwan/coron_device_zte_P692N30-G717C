.class final Ldj;
.super Ldh;
.source "SourceFile"


# instance fields
.field private a:I

.field private final a:Ldi;


# direct methods
.method constructor <init>(IILdi;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ldh;-><init>(II)V

    .line 26
    iput-object p3, p0, Ldj;->a:Ldi;

    .line 27
    return-void
.end method


# virtual methods
.method a()Ldi;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ldj;->a:Ldi;

    return-object v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Ldj;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldj;->a:I

    .line 39
    return-void
.end method

.method c()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Ldj;->a:I

    return v0
.end method

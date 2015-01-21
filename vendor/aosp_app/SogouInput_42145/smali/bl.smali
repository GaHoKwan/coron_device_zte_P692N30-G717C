.class public final Lbl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbe;

.field private final a:[Lp;


# direct methods
.method public constructor <init>(Lbe;[Lp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lbl;->a:Lbe;

    .line 35
    iput-object p2, p0, Lbl;->a:[Lp;

    .line 36
    return-void
.end method


# virtual methods
.method public a()Lbe;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lbl;->a:Lbe;

    return-object v0
.end method

.method public a()[Lp;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lbl;->a:[Lp;

    return-object v0
.end method

.class public Lte;
.super Lta;
.source "SourceFile"

# interfaces
.implements Lazv;


# instance fields
.field a:Lazn;


# direct methods
.method constructor <init>(Lsy;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lta;-><init>(Lsy;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ltf;

    invoke-direct {v0, p0, p0}, Ltf;-><init>(Lte;Lazs;)V

    iput-object v0, p0, Lte;->a:Lazn;

    .line 100
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lte;->a:Lazn;

    invoke-interface {v0, p1}, Lazn;->a(F)V

    .line 192
    return-void
.end method

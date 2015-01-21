.class public final Laf;
.super Lah;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    sget-object v0, Lai;->p:Lai;

    invoke-direct {p0, v0}, Lah;-><init>(Lai;)V

    .line 28
    iput-object p1, p0, Laf;->a:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Laf;->a:Ljava/lang/String;

    return-object v0
.end method

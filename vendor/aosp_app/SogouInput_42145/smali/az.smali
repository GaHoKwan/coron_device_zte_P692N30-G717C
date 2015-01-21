.class public Laz;
.super Lah;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 7
    sget-object v0, Lai;->m:Lai;

    invoke-direct {p0, v0}, Lah;-><init>(Lai;)V

    .line 9
    iput-object p1, p0, Laz;->a:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Laz;->a:Ljava/lang/String;

    return-object v0
.end method

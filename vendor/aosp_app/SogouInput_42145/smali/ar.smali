.class public final Lar;
.super Lah;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    sget-object v0, Lai;->e:Lai;

    invoke-direct {p0, v0}, Lah;-><init>(Lai;)V

    .line 32
    iput-object p1, p0, Lar;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lar;->b:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lar;->a:Ljava/lang/String;

    return-object v0
.end method

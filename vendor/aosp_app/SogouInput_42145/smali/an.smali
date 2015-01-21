.class public final Lan;
.super Lah;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:[Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    sget-object v0, Lai;->i:Lai;

    invoke-direct {p0, v0}, Lah;-><init>(Lai;)V

    .line 31
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v1

    iput-object v0, p0, Lan;->a:[Ljava/lang/String;

    .line 32
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    iput-object v0, p0, Lan;->b:[Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lan;->a:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lan;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    sget-object v0, Lai;->i:Lai;

    invoke-direct {p0, v0}, Lah;-><init>(Lai;)V

    .line 39
    iput-object p1, p0, Lan;->a:[Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lan;->b:[Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lan;->a:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lan;->b:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lan;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lan;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lan;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 98
    iget-object v1, p0, Lan;->a:[Ljava/lang/String;

    invoke-static {v1, v0}, Lan;->a([Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 99
    iget-object v1, p0, Lan;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lan;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 100
    iget-object v1, p0, Lan;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lan;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbi;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lci;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    invoke-direct {p0}, Lck;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 344
    check-cast p1, Lcj;

    invoke-virtual {p1}, Lcj;->a()I

    move-result v0

    check-cast p2, Lcj;

    invoke-virtual {p2}, Lcj;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

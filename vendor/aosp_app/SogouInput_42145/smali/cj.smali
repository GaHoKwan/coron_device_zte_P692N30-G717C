.class Lcj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final a:Lp;

.field private final b:Lp;


# direct methods
.method private constructor <init>(Lp;Lp;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p1, p0, Lcj;->a:Lp;

    .line 322
    iput-object p2, p0, Lcj;->b:Lp;

    .line 323
    iput p3, p0, Lcj;->a:I

    .line 324
    return-void
.end method

.method constructor <init>(Lp;Lp;ILci;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-direct {p0, p1, p2, p3}, Lcj;-><init>(Lp;Lp;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcj;->a:I

    return v0
.end method

.method public a()Lp;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcj;->a:Lp;

    return-object v0
.end method

.method public b()Lp;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcj;->b:Lp;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcj;->a:Lp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcj;->b:Lp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

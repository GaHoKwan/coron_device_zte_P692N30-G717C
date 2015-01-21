.class final Lcg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final a:[Lcf;


# direct methods
.method private constructor <init>(ILcf;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Lcg;->a:I

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Lcf;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object v0, p0, Lcg;->a:[Lcf;

    .line 131
    return-void
.end method

.method constructor <init>(ILcf;Lce;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcg;-><init>(ILcf;)V

    return-void
.end method

.method private constructor <init>(ILcf;Lcf;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcg;->a:I

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [Lcf;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcg;->a:[Lcf;

    .line 136
    return-void
.end method

.method constructor <init>(ILcf;Lcf;Lce;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcg;-><init>(ILcf;Lcf;)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcg;->a:I

    return v0
.end method

.method a()[Lcf;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcg;->a:[Lcf;

    return-object v0
.end method

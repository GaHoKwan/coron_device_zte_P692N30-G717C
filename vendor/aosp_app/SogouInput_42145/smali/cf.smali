.class final Lcf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p1, p0, Lcf;->a:I

    .line 158
    iput p2, p0, Lcf;->b:I

    .line 159
    return-void
.end method

.method constructor <init>(IILce;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcf;-><init>(II)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcf;->a:I

    return v0
.end method

.method b()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcf;->b:I

    return v0
.end method

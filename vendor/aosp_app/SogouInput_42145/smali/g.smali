.class public final Lg;
.super Lm;
.source "SourceFile"


# static fields
.field private static final a:Lg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lg;

    invoke-direct {v0}, Lg;-><init>()V

    sput-object v0, Lg;->a:Lg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lm;-><init>()V

    .line 32
    return-void
.end method

.method public static a()Lg;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lg;->a:Lg;

    return-object v0
.end method

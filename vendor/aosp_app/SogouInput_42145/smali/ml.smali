.class public final Lml;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:Lmo;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lml;->b:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lml;->a:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lml;->a:Lmo;

    .line 46
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lml;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Lmo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lml;->a:Lmo;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lml;->b:Ljava/lang/String;

    return-object v0
.end method

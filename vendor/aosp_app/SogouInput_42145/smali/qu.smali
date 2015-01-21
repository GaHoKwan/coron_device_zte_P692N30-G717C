.class public Lqu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lqu;->a:Ljava/lang/String;

    .line 26
    iput-wide p2, p0, Lqu;->a:D

    .line 27
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lqu;->a:Ljava/lang/String;

    return-object v0
.end method

.class public Lti;
.super Ltc;
.source "SourceFile"

# interfaces
.implements Lazz;


# instance fields
.field private a:Lazx;


# direct methods
.method constructor <init>(Lsy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ltc;-><init>(Lsy;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lazx;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    const-string v0, "region"

    invoke-interface {p1}, Lazx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lti;->a:Lazx;

    .line 51
    return-void
.end method

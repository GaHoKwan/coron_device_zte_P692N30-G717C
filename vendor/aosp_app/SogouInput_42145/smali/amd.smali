.class Lamd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrp;


# instance fields
.field final synthetic a:Lamc;


# direct methods
.method constructor <init>(Lamc;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lamd;->a:Lamc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lamd;->a:Lamc;

    invoke-static {v0, p1}, Lamc;->a(Lamc;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    return-void
.end method

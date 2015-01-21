.class Land;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lro;


# instance fields
.field final synthetic a:Lanb;


# direct methods
.method constructor <init>(Lanb;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Land;->a:Lanb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Land;->a:Lanb;

    invoke-static {v0, p1}, Lanb;->a(Lanb;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    return-void
.end method

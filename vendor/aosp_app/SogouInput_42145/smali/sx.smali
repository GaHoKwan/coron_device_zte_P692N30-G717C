.class public abstract Lsx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lazp;


# instance fields
.field final a:Lazs;


# direct methods
.method constructor <init>(Lazs;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lsx;->a:Lazs;

    .line 48
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 4
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lsx;->a:Lazs;

    const-string v1, "dur"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x447a

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lazs;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

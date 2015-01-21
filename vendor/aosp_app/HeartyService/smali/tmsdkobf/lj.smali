.class public Ltmsdkobf/lj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Cu:I

.field public Cv:Ltmsdkobf/lh;

.field public Cw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public Cx:Ltmsdkobf/cx;

.field public Cy:Ltmsdkobf/cx;

.field public Cz:Z


# direct methods
.method public constructor <init>(ILtmsdkobf/lh;)V
    .locals 2
    .parameter "requestId"
    .parameter "wupParam"

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ltmsdkobf/cx;

    invoke-direct {v0, v1}, Ltmsdkobf/cx;-><init>(Z)V

    iput-object v0, p0, Ltmsdkobf/lj;->Cx:Ltmsdkobf/cx;

    .line 36
    new-instance v0, Ltmsdkobf/cx;

    invoke-direct {v0, v1}, Ltmsdkobf/cx;-><init>(Z)V

    iput-object v0, p0, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    .line 47
    iput-boolean v1, p0, Ltmsdkobf/lj;->Cz:Z

    .line 55
    iput p1, p0, Ltmsdkobf/lj;->Cu:I

    .line 56
    iput-object p2, p0, Ltmsdkobf/lj;->Cv:Ltmsdkobf/lh;

    .line 57
    iget-object v0, p0, Ltmsdkobf/lj;->Cx:Ltmsdkobf/cx;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ltmsdkobf/cx;->an(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ltmsdkobf/cx;->an(Ljava/lang/String;)V

    .line 59
    return-void
.end method

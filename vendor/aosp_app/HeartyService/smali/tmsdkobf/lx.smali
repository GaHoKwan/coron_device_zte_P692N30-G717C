.class public abstract Ltmsdkobf/lx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected Eu:Ltmsdkobf/df;

.field protected Ev:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "instrType"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Ltmsdkobf/lx;->Ev:I

    .line 16
    return-void
.end method


# virtual methods
.method protected a([BLtmsdkobf/df;)V
    .locals 2
    .parameter "data"
    .parameter "proxy"

    .prologue
    .line 27
    new-instance v0, Ltmsdkobf/cw;

    invoke-direct {v0}, Ltmsdkobf/cw;-><init>()V

    .line 28
    .local v0, uniAttribute:Ltmsdkobf/cw;
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ltmsdkobf/cw;->an(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p1}, Ltmsdkobf/cw;->b([B)V

    .line 30
    const-string v1, "cloudcmd"

    invoke-virtual {v0, v1, p2}, Ltmsdkobf/cw;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/df;

    iput-object v1, p0, Ltmsdkobf/lx;->Eu:Ltmsdkobf/df;

    .line 31
    return-void
.end method

.method public abstract hj()I
.end method

.method public abstract x([B)V
.end method

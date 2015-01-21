.class public final Ltmsdkobf/aw;
.super Ltmsdkobf/df;
.source "SourceFile"


# instance fields
.field public phonenum:Ljava/lang/String;


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 2
    .parameter "_is"

    .prologue
    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/aw;->phonenum:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 24
    iget-object v0, p0, Ltmsdkobf/aw;->phonenum:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 25
    return-void
.end method
